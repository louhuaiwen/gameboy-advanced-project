#include "myLib.h"
#include "game.h"
#include "backgroundcollision2.h"
#include "background2.h"
#include "tilesCollision2.h"
#include "clickSound.h"
#include "teleportSound.h"
#include "biteSound.h"
#include "dyingSound.h"

OBJ_ATTR shadowOAM[128];
ANISPRITE player;
ANISPRITE teleport;
ANISPRITE teleport2;
ANISPRITE teleport3;
ANISPRITE mouth; 
ANISPRITE mouth2;
ANISPRITE gate; 

unsigned char* backgroundcollision2 = backgroundcollision2Bitmap;

int tilesRemaining2; 
int reachGate2; 
int hOff; 
int vOff;
int cheatMode;

// player animation states for aniState
enum {RIGHT, LEFT, UP, DOWN, IDLE};

// Initialize the game
void initLevel2() {

    initPlayer2();  
    initTeleport2();
    initMouth2();
    initGate2(); 

    DMANow(3, tilesCollision2Map, &SCREENBLOCK[30], tilesCollision2MapLen / 2);
    DMANow(3, tilesCollision2Tiles, &CHARBLOCK[2], tilesCollision2TilesLen / 2); 
    DMANow(3, background2Map, &SCREENBLOCK[31], background2MapLen / 2); 
    
    tilesRemaining2 = 47; 
    reachGate2 = 0;
    hOff = 9;
    cheatMode = 0;

}

// Updates the game each frame
void updateLevel2() {
	updatePlayer2();
    updateMouth2();
    updateGate2(); 
    updateTeleport2(); 
    hOff++; 
}

// Draws the game each frame
void drawLevel2() {
    drawPlayer2();
    drawTeleport2();
    drawMouth2();
    drawGate2();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG2HOFF = hOff;
    REG_BG2VOFF = vOff;
}
// Initialize the player
void initPlayer2() {
    player.width = 8;
    player.height = 8;
    player.rdel = 16;
    player.cdel = 16;

    player.worldRow = 20;
    player.worldCol = 20;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = LEFT;
    player.life = 1; 
}
// Handle every-frame actions of the player
void updatePlayer2() {
    int oldRow = player.worldRow;
    int oldCol = player.worldCol;
    if (cheatMode == 0) { 
        if (SCREENBLOCK[31].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] == 0x0000) { 
            player.life = 0;
            playSoundB(dyingSound_data, dyingSound_length, 0);
        } 
    }
    if(BUTTON_PRESSED(BUTTON_UP)) {
        playSoundB(clickSound_data, clickSound_length, 0); //Play music
        player.aniState = UP;
        if (cheatMode == 1) {
             if (player.worldRow > 0 
            && backgroundcollision2[OFFSET(player.worldCol, player.worldRow - player.rdel, MAPWIDTH)] //top left
            && backgroundcollision2[OFFSET(player.worldCol + player.width - 1, player.worldRow - player.rdel, MAPWIDTH)] //top right
            ) {
            // Update player's world position if the above is true
                player.worldRow -= player.rdel;   
            }
        } else {
            player.worldRow -= player.rdel;
            tilesRemaining2--;  
            if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] >> 8 == 0x0008, 0x0402, 0x0c02) { 
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles2((oldCol) / 8, (oldRow + 8) / 8); 
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
            && backgroundcollision2[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel - 1, MAPWIDTH)] //bottom left
            && backgroundcollision2[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.height + player.rdel - 1, MAPWIDTH)]) { //bottom right
                player.worldRow += player.cdel; 
            } 
        }else {
            player.worldRow += player.cdel; 
            tilesRemaining2--; 
        if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] >> 8 == 0x0008, 0x0402, 0x0c02) { 
            if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles2((oldCol) / 8, (oldRow + 8) / 8);
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
            && backgroundcollision2[OFFSET(player.worldCol - player.cdel, player.worldRow, MAPWIDTH)] //top left
            && backgroundcollision2[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height -1 , MAPWIDTH)]) { //bottom left
                player.worldCol -= player.cdel;
            } 
        } else { 
            player.worldCol -= player.cdel;
            tilesRemaining2--; 
            if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] >> 8 == 0x0008, 0x0402, 0x0c02) { 
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                    eraseTiles2((oldCol) / 8, (oldRow + 8) / 8);
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
            && backgroundcollision2[OFFSET(player.worldCol + player.width + player.cdel -1 , player.worldRow, MAPWIDTH)] //top right
            && backgroundcollision2[OFFSET(player.worldCol + player.width + player.cdel -1 , player.worldRow + player.height - 1, MAPWIDTH)]//bottom right
                ) {
                player.worldCol += player.cdel;
            }
        } else {
            player.worldCol += player.cdel;
            tilesRemaining2--; 
            if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] >> 8 == 0x0008, 0x0402, 0x0c02) { 
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles2((oldCol) / 8, (oldRow + 8) / 8);
                }
            }
                oldCol = player.worldCol;
        }
    }
    //animatePlayer();
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
            player.worldRow = 52;
            player.worldCol = 52;
        }
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	teleport2.worldCol, teleport2.worldRow, teleport2.width, teleport2.height)) {	
            playSoundB(teleportSound_data, teleportSound_length, 0);	
            player.worldRow = 84;
            player.worldCol = 52;
        }
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	teleport3.worldCol, teleport3.worldRow, teleport3.width, teleport3.height)) {	
            playSoundB(teleportSound_data, teleportSound_length, 0);	
            player.worldRow = 108;
            player.worldCol = 164;
        }  
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	mouth.worldCol, mouth.worldRow, mouth.width, mouth.height) ||
        collision(player.worldCol, player.worldRow, player.width, player.height, 
    	mouth2.worldCol, mouth2.worldRow, mouth2.width, mouth2.height)) {	
            playSoundB(biteSound_data, biteSound_length, 0);	
            player.life = 0; 
        }
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	gate.worldCol, gate.worldRow, gate.width, gate.height)) {
            playSoundB(biteSound_data, biteSound_length, 0);	
            reachGate2 = 1; 
        }
} 

// Draw the player
void drawPlayer2() {
    if (player.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & player.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[0].attr1 = (COLMASK & player.worldCol) | ATTR1_TINY;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState, player.curFrame);
    }
}

void initTeleport2() {
    teleport.width = 16;
    teleport.height = 16;
    teleport2.width = 16;
    teleport2.height = 16;
    teleport3.width = 16;
    teleport3.height = 16;

    teleport.worldRow = 80;
    teleport.worldCol = 176;
    teleport2.worldRow = 128;
    teleport2.worldCol = 80;
    teleport3.worldRow = 128;
    teleport3.worldCol = 16;

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
    
}  

void updateTeleport2() {
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
}

void drawTeleport2() {
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
        }
}   

void initMouth2() {
    mouth.width = 16;
    mouth.height = 16;
    mouth2.width = 16;
    mouth2.height = 16;
    
    mouth.worldRow = 48;
    mouth.worldCol = 64;
    mouth.aniCounter = 0;
    mouth.curFrame = 0;
    mouth.numFrames = 4;
    mouth.aniState = 0; 

    mouth2.worldRow = 48;
    mouth2.worldCol = 192;
    mouth2.aniCounter = 0;
    mouth2.curFrame = 0;
    mouth2.numFrames = 4;
    mouth2.aniState = 0;
}  

void updateMouth2() {
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
}

void drawMouth2() {
    if (mouth.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[4].attr0 = (ROWMASK & mouth.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[4].attr1 = (COLMASK & mouth.worldCol) | ATTR1_SMALL;
        shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, mouth.aniState*2);
        shadowOAM[5].attr0 = (ROWMASK & mouth2.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[5].attr1 = (COLMASK & mouth2.worldCol) | ATTR1_SMALL;
        shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, mouth2.aniState*2);
    }
}   

void initGate2() {
    gate.width = 16;
    gate.height = 16;

    gate.worldRow = 104;
    gate.worldCol = 208;
    gate.aniCounter = 0;
    gate.curFrame = 0;
    gate.numFrames = 4;
    gate.aniState = 0; 
}  

void updateGate2() {
    gate.aniCounter ++;
    if (gate.aniCounter == 15) {
        gate.aniState++;
    if (gate.aniState >= 4) {
        gate.aniState = 0; 
    } 
    gate.aniCounter = 0;
    }   
}

void drawGate2() {
    if (gate.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[6].attr0 = (ROWMASK & gate.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[6].attr1 = (COLMASK & gate.worldCol) | ATTR1_SMALL;
        shadowOAM[6].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, gate.aniState*2);
        }
} 

void eraseTiles2(int tileCol, int tileRow) {
    SCREENBLOCK[31].tilemap[OFFSET(tileCol, tileRow, 256 / 8)] = 0x0000; //empty tile entry for normal map
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision2[OFFSET(tileCol * 8 + i, tileRow * 8 + j, 256)] = 0;
        }
    }
    SCREENBLOCK[31].tilemap[OFFSET(tileCol+1, tileRow, 256 / 8)] = 0x0000;
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision2[OFFSET((tileCol + 1) * 8 + i, tileRow * 8 + j, 256)] = 0;
        }
    }
    SCREENBLOCK[31].tilemap[OFFSET(tileCol, tileRow-1, 256 / 8)] = 0x0000; 
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision2[OFFSET(tileCol * 8 + i, (tileRow - 1) * 8 + j, 256)] = 0;
        }
    }
    SCREENBLOCK[31].tilemap[OFFSET(tileCol+1, tileRow-1, 256 / 8)] = 0x0000; 
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision2[OFFSET((tileCol + 1) * 8 + i, (tileRow - 1) * 8 + j, 256)] = 0;
        }
    }
}