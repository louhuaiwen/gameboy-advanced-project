#include "myLib.h"
#include "game.h"
#include "backgroundcollision3.h"
#include "background3.h"
#include "tilesCollision3.h"
#include "clickSound.h"
#include "teleportSound.h"
#include "biteSound.h"
#include "dyingSound.h"

OBJ_ATTR shadowOAM[128];
ANISPRITE player;
ANISPRITE teleport;
ANISPRITE teleport2;
ANISPRITE teleport3;
ANISPRITE teleport4;
ANISPRITE teleport5;
ANISPRITE mouth; 
ANISPRITE mouth2;
ANISPRITE mouth3; 
ANISPRITE mouth4;
ANISPRITE gate; 

unsigned char* backgroundcollision3 = backgroundcollision3Bitmap;

int tilesRemaining3; 
int reachGate3; 
int hOff; 
int vOff;
int cheatMode;

enum {RIGHT, LEFT, UP, DOWN, IDLE};

void initLevel3() {
    initPlayer3();  
    initTeleport3();
    initMouth3();
    initGate3(); 

    DMANow(3, tilesCollision3Map, &SCREENBLOCK[30], tilesCollision3MapLen / 2);
    DMANow(3, tilesCollision3Tiles, &CHARBLOCK[2], tilesCollision3TilesLen / 2); 
    DMANow(3, background3Map, &SCREENBLOCK[31], background3MapLen / 2); 
    
    tilesRemaining3 = 48; 
    reachGate3 = 0;
    hOff = 9;
    cheatMode = 0;
}

void updateLevel3() {
	updatePlayer3();
    updateMouth3();
    updateGate3(); 
    updateTeleport3(); 
    hOff++; 
}

void drawLevel3() {
    drawPlayer3();
    drawTeleport3();
    drawMouth3();
    drawGate3();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    REG_BG2HOFF = hOff;
    REG_BG2VOFF = vOff;
}

// Initialize the player
void initPlayer3() {

    player.width = 8;
    player.height = 8;
    player.rdel = 16;
    player.cdel = 16;
    player.worldRow = 20;
    player.worldCol = 92;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = LEFT;
    player.life = 1; 
}

// Handle every-frame actions of the player
void updatePlayer3() {
    int oldRow = player.worldRow;
    int oldCol = player.worldCol;
      
    if (cheatMode == 0) { 
        if (SCREENBLOCK[31].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] == 0x0000) { 
            player.life = 0;
            playSoundB(dyingSound_data, dyingSound_length, 0);
        }
    } 
    if(BUTTON_PRESSED(BUTTON_UP)) {
        playSoundB(clickSound_data, clickSound_length, 0);  
        player.aniState = UP;
        if (cheatMode == 1) {
             if (player.worldRow > 0 
            && backgroundcollision3[OFFSET(player.worldCol, player.worldRow - player.rdel, MAPWIDTH)] //top left
            && backgroundcollision3[OFFSET(player.worldCol + player.width - 1, player.worldRow - player.rdel, MAPWIDTH)]) { //top right
                player.worldRow -= player.rdel;
            }
        } else {
            player.worldRow -= player.rdel;
            tilesRemaining3--; 
            if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] == 0x0401, 0x0801) { 
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles3((oldCol) / 8, (oldRow + 8) / 8); 
                }    
            }
                oldRow = player.worldRow;
        }
    }
    if(BUTTON_PRESSED(BUTTON_DOWN)) {
        playSoundB(clickSound_data, clickSound_length, 0);  
        player.aniState = DOWN;
        if (cheatMode == 1) {
            if (player.worldRow + player.height - 1 < MAPHEIGHT - player.cdel 
            && backgroundcollision3[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel - 1, MAPWIDTH)] //bottom left
            && backgroundcollision3[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.height + player.rdel - 1, MAPWIDTH)]) { //bottom right
                player.worldRow += player.cdel; 
            } 
        } else {
            player.worldRow += player.cdel; 
            tilesRemaining3--; 
            if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] == 0x0401, 0x0801) { 
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                    eraseTiles3((oldCol) / 8, (oldRow + 8) / 8);
                }
            }
                oldRow = player.worldRow;
        }
    }
    if(BUTTON_PRESSED(BUTTON_LEFT)) {
        playSoundB(clickSound_data, clickSound_length, 0);  
        player.aniState = LEFT;
        if (cheatMode == 1) {
            if (player.worldCol >= player.cdel  
            && backgroundcollision3[OFFSET(player.worldCol - player.cdel, player.worldRow, MAPWIDTH)] //top left
            && backgroundcollision3[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height -1 , MAPWIDTH)]) { //bottom left
            player.worldCol -= player.cdel;
            } 
        } else { 
            player.worldCol -= player.cdel;
            tilesRemaining3--; 
            if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] == 0x0401, 0x0801) { 
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles3((oldCol) / 8, (oldRow + 8) / 8);
                }
            }
                oldCol = player.worldCol;
        }
    }
    if(BUTTON_PRESSED(BUTTON_RIGHT)) {
        playSoundB(clickSound_data, clickSound_length, 0);  
        player.aniState = RIGHT;
        if (cheatMode == 1) {
            if (player.worldCol + player.width - 1 < MAPWIDTH - player.cdel 
            && backgroundcollision3[OFFSET(player.worldCol + player.width + player.cdel -1 , player.worldRow, MAPWIDTH)] //top right
            && backgroundcollision3[OFFSET(player.worldCol + player.width + player.cdel -1 , player.worldRow + player.height - 1, MAPWIDTH)]) {//bottom right
                player.worldCol += player.cdel;
            }
        } else {
            player.worldCol += player.cdel;
            tilesRemaining3--; 
              if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] == 0x0401, 0x0801) { 
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles3((oldCol) / 8, (oldRow + 8) / 8);
                }
            }
                oldCol = player.worldCol;
        }
    }

    player.aniCounter++;
    if (player.aniCounter % 10 == 0) {
        player.curFrame++;
        if(player.curFrame == player.numFrames) {
            player.curFrame = 0;
        }
    }

	//collision check
	if(collision(player.worldCol, player.worldRow, player.width, player.height, 
	    teleport.worldCol, teleport.worldRow, teleport.width, teleport.height)) {	
            playSoundB(teleportSound_data, teleportSound_length, 0);	
            player.worldRow = 12;
            player.worldCol = 180;
    }
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	teleport2.worldCol, teleport2.worldRow, teleport2.width, teleport2.height)) {	
            playSoundB(teleportSound_data, teleportSound_length, 0);	
            player.worldRow = 12;
            player.worldCol = 52;
    }
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	teleport3.worldCol, teleport3.worldRow, teleport3.width, teleport3.height)) {
            playSoundB(teleportSound_data, teleportSound_length, 0);		
            player.worldRow = 28;
            player.worldCol = 52;
    }  
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	teleport4.worldCol, teleport4.worldRow, teleport4.width, teleport4.height)) {
            playSoundB(teleportSound_data, teleportSound_length, 0);		
            player.worldRow = 28;
            player.worldCol = 180;
    }  
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	teleport5.worldCol, teleport5.worldRow, teleport5.width, teleport5.height)) {	
            playSoundB(teleportSound_data, teleportSound_length, 0);	
            player.worldRow = 100;
            player.worldCol = 124;
    }  
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	mouth.worldCol, mouth.worldRow, mouth.width, mouth.height) || 
        collision(player.worldCol, player.worldRow, player.width, player.height, 
    	mouth2.worldCol, mouth2.worldRow, mouth2.width, mouth2.height) || 
        collision(player.worldCol, player.worldRow, player.width, player.height, 
    	mouth3.worldCol, mouth3.worldRow, mouth3.width, mouth3.height) ||
        collision(player.worldCol, player.worldRow, player.width, player.height, 
    	mouth4.worldCol, mouth4.worldRow, mouth4.width, mouth4.height) ) {
            playSoundB(biteSound_data, biteSound_length, 0);	
            player.life = 0; 
    } 
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	gate.worldCol, gate.worldRow, gate.width, gate.height)) {	
            reachGate3 = 1; 
    }
} 

// Draw the player
void drawPlayer3() {
    if (player.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & player.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[0].attr1 = (COLMASK & player.worldCol) | ATTR1_TINY;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState, player.curFrame);
    }
}

void initTeleport3() {
    teleport.width = 16;
    teleport.height = 16;
    teleport2.width = 16;
    teleport2.height = 16;
    teleport3.width = 16;
    teleport3.height = 16;
    teleport4.width = 16;
    teleport4.height = 16;
    teleport5.width = 16;
    teleport5.height = 16;

    teleport.worldRow = 48;
    teleport.worldCol = 104;
    teleport2.worldRow = 40;
    teleport2.worldCol = 192;
    teleport3.worldRow = 56;
    teleport3.worldCol = 208;
    teleport4.worldRow = 40;
    teleport4.worldCol = 32;
    teleport5.worldRow = 56;
    teleport5.worldCol = 16;

    teleport.aniCounter = 0;
    teleport.curFrame = 0;
    teleport.numFrames = 4;
    teleport.aniState = 0; 
    teleport2.aniCounter = 0;
    teleport2.curFrame = 0;
    teleport2.numFrames = 4;
    teleport2.aniState = 0; 
    teleport3.aniCounter = 0;
    teleport3.curFrame = 0;
    teleport3.numFrames = 4;
    teleport3.aniState = 0; 
    teleport4.aniCounter = 0;
    teleport4.curFrame = 0;
    teleport4.numFrames = 4;
    teleport4.aniState = 0; 
    teleport5.aniCounter = 0;
    teleport5.curFrame = 0;
    teleport5.numFrames = 4;
    teleport5.aniState = 0;   
}  

void updateTeleport3() {
    teleport.aniCounter ++;
    if (teleport.aniCounter == 15) {
        teleport.aniState++;
    if (teleport.aniState >= 3) {
        teleport.aniState = 0; 
    } 
    teleport.aniCounter = 0;
    } 
    teleport2.aniCounter ++;
    if (teleport2.aniCounter == 15) {
        teleport2.aniState++;
    if (teleport2.aniState >= 3) {
        teleport2.aniState = 0; 
    } 
    teleport2.aniCounter = 0;
    } 
    teleport3.aniCounter ++;
    if (teleport3.aniCounter == 15) {
        teleport3.aniState++;
    if (teleport3.aniState >= 3) {
        teleport3.aniState = 0; 
    } 
    teleport3.aniCounter = 0;
    } 
    teleport4.aniCounter ++;
    if (teleport4.aniCounter == 15) {
        teleport4.aniState++;
    if (teleport4.aniState >= 3) {
        teleport4.aniState = 0; 
    } 
    teleport4.aniCounter = 0;
    } 
    teleport5.aniCounter ++;
    if (teleport5.aniCounter == 15) {
        teleport5.aniState++;
    if (teleport5.aniState >= 3) {
        teleport5.aniState = 0; 
    } 
    teleport5.aniCounter = 0;
    }    
}

void drawTeleport3() {
    if (teleport.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[1].attr0 = (ROWMASK & teleport.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[1].attr1 = (COLMASK & teleport.worldCol) | ATTR1_SMALL;
        shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, teleport.aniState*2);
        shadowOAM[2].attr0 = (ROWMASK & teleport2.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[2].attr1 = (COLMASK & teleport2.worldCol) | ATTR1_SMALL;
        shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, teleport2.aniState*2);
        shadowOAM[3].attr0 = (ROWMASK & teleport3.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[3].attr1 = (COLMASK & teleport3.worldCol) | ATTR1_SMALL;
        shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, teleport3.aniState*2);
        shadowOAM[4].attr0 = (ROWMASK & teleport4.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[4].attr1 = (COLMASK & teleport4.worldCol) | ATTR1_SMALL;
        shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, teleport3.aniState*2);
        shadowOAM[5].attr0 = (ROWMASK & teleport5.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[5].attr1 = (COLMASK & teleport5.worldCol) | ATTR1_SMALL;
        shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, teleport3.aniState*2);
    }
}   

void initMouth3() {
    mouth.width = 16;
    mouth.height = 16;
    mouth2.width = 16;
    mouth2.height = 16;
    mouth3.width = 16;
    mouth3.height = 16;
    mouth4.width = 16;
    mouth4.height = 16;

    mouth.worldRow = 24;
    mouth.worldCol = 32;
    mouth.aniCounter = 0;
    mouth.curFrame = 0;
    mouth.numFrames = 4;
    mouth.aniState = 0; 

    mouth2.worldRow = 56;
    mouth2.worldCol = 32;
    mouth2.aniCounter = 0;
    mouth2.curFrame = 0;
    mouth2.numFrames = 4;
    mouth2.aniState = 0;

    mouth3.worldRow = 24;
    mouth3.worldCol = 192;
    mouth3.aniCounter = 0;
    mouth3.curFrame = 0;
    mouth3.numFrames = 4;
    mouth3.aniState = 0;
    
    mouth4.worldRow = 56;
    mouth4.worldCol = 192;
    mouth4.aniCounter = 0;
    mouth4.curFrame = 0;
    mouth4.numFrames = 4;
    mouth4.aniState = 0;
    
    
}  

void updateMouth3() {
    mouth.aniCounter ++;
    if (mouth.aniCounter == 15) {
        mouth.aniState++;
    if (mouth.aniState >= 4) {
        mouth.aniState = 0; 
    } 
    mouth.aniCounter = 0;
    }
    mouth2.aniCounter ++;
    if (mouth2.aniCounter == 15) {
        mouth2.aniState++;
    if (mouth2.aniState >= 4) {
        mouth2.aniState = 0; 
    } 
    mouth2.aniCounter = 0;
    }    
    mouth3.aniCounter ++;
    if (mouth3.aniCounter == 15) {
        mouth3.aniState++;
    if (mouth3.aniState >= 4) {
        mouth3.aniState = 0; 
    } 
    mouth3.aniCounter = 0;
    }    
    mouth4.aniCounter ++;
    if (mouth4.aniCounter == 15) {
        mouth4.aniState++;
    if (mouth4.aniState >= 4) {
        mouth4.aniState = 0; 
    } 
    mouth4.aniCounter = 0;
    }    
}

void drawMouth3() {
    if (mouth.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[6].attr0 = (ROWMASK & mouth.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[6].attr1 = (COLMASK & mouth.worldCol) | ATTR1_SMALL;
        shadowOAM[6].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, mouth.aniState*2);
        shadowOAM[7].attr0 = (ROWMASK & mouth2.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[7].attr1 = (COLMASK & mouth2.worldCol) | ATTR1_SMALL;
        shadowOAM[7].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, mouth2.aniState*2);
        shadowOAM[8].attr0 = (ROWMASK & mouth3.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[8].attr1 = (COLMASK & mouth3.worldCol) | ATTR1_SMALL;
        shadowOAM[8].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, mouth3.aniState*2);
        shadowOAM[9].attr0 = (ROWMASK & mouth4.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[9].attr1 = (COLMASK & mouth4.worldCol) | ATTR1_SMALL;
        shadowOAM[9].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, mouth4.aniState*2);
    }
}   

void initGate3() {
    gate.width = 16;
    gate.height = 16;
    gate.worldRow = 112;
    gate.worldCol = 120;
    gate.aniCounter = 0;
    gate.curFrame = 0;
    gate.numFrames = 4;
    gate.aniState = 0; 
}  

void updateGate3() {
    gate.aniCounter ++;
    if (gate.aniCounter == 15) {
        gate.aniState++;
    if (gate.aniState >= 4) {
        gate.aniState = 0; 
    } 
    gate.aniCounter = 0;
    }   
}

void drawGate3() {
    if (gate.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[10].attr0 = (ROWMASK & gate.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[10].attr1 = (COLMASK & gate.worldCol) | ATTR1_SMALL;
        shadowOAM[10].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, gate.aniState*2);
        }
} 

void eraseTiles3(int tileCol, int tileRow) {
    SCREENBLOCK[31].tilemap[OFFSET(tileCol, tileRow, 256 / 8)] = 0x0000; //empty tile entry for normal map
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
        backgroundcollision3[OFFSET(tileCol * 8 + i, tileRow * 8 + j, 256)] = 0;
        }
    }
    SCREENBLOCK[31].tilemap[OFFSET(tileCol+1, tileRow, 256 / 8)] = 0x0000; //empty tile entry for normal map
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
        backgroundcollision3[OFFSET((tileCol + 1) * 8 + i, tileRow * 8 + j, 256)] = 0;
        }
    }
    SCREENBLOCK[31].tilemap[OFFSET(tileCol, tileRow-1, 256 / 8)] = 0x0000; //empty tile entry for normal map
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
        backgroundcollision3[OFFSET(tileCol * 8 + i, (tileRow - 1) * 8 + j, 256)] = 0;
        }
    }   
    SCREENBLOCK[31].tilemap[OFFSET(tileCol+1, tileRow-1, 256 / 8)] = 0x0000; //empty tile entry for normal map
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
        backgroundcollision3[OFFSET((tileCol + 1) * 8 + i, (tileRow - 1) * 8 + j, 256)] = 0;
        }
    }
}