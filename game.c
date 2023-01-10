#include "myLib.h"
#include "game.h"
#include "background.h"
#include "backgroundcollision.h"
#include "tilesCollision.h"
#include "clickSound.h"
#include "teleportSound.h"
#include "biteSound.h"
#include "dyingSound.h"

OBJ_ATTR shadowOAM[128];
ANISPRITE player;
ANISPRITE teleport;
ANISPRITE mouth; 
ANISPRITE gate; 
unsigned char* backgroundcollision = backgroundcollisionBitmap;

int collisionCheck; 
int life; 
int tilesRemaining; 
int reachGate; 
int hOff; 
int vOff;
int cheatMode;

// player animation states for aniState
enum {RIGHT, LEFT, UP, DOWN, IDLE};

// Initialize the game
void initGame() {

    initPlayer();
    initTeleport();
    initMouth();
    initGate();

    tilesRemaining = 55; 
    reachGate = 0; 
    cheatMode = 0;
    hOff = 9;

    DMANow(3, tilesCollisionMap, &SCREENBLOCK[30], tilesCollisionMapLen / 2);
    DMANow(3, tilesCollisionTiles, &CHARBLOCK[2], tilesCollisionTilesLen / 2); 
    DMANow(3, backgroundMap, &SCREENBLOCK[31], backgroundMapLen / 2); 
}

// Updates the game each frame
void updateGame() {
	updatePlayer();
    updateTeleport();
    updateMouth();
    updateGate();

    hOff++; 
}

// Draws the game each frame
void drawGame() {
    drawPlayer();
    drawTeleport();
    drawMouth();
    drawGate();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG2HOFF = hOff;
    REG_BG2VOFF = vOff;
}

// Initialize the player
void initPlayer() {
    player.width = 8;
    player.height = 8;
    player.rdel = 16;
    player.cdel = 16;
    player.worldRow = 28;
    player.worldCol = 204;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = LEFT;
    player.life = 1; 
}

// Handle every-frame actions of the player
void updatePlayer() {
    int oldRow = player.worldRow;
    int oldCol = player.worldCol;
    //cheatmode condition
    if (cheatMode == 0) { 
        if (SCREENBLOCK[31].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] == 0x0000) { 
        player.life = 0;
        playSoundB(dyingSound_data, dyingSound_length, 0);
        } 
    }
    //movement
    if(BUTTON_PRESSED(BUTTON_UP)) {
        player.aniState = UP;
	    playSoundB(clickSound_data, clickSound_length, 0);
        if (cheatMode == 1) {
             if (player.worldRow > 0 
            && backgroundcollision[OFFSET(player.worldCol, player.worldRow - player.rdel, MAPWIDTH)] //top left
            && backgroundcollision[OFFSET(player.worldCol + player.width - 1, player.worldRow - player.rdel, MAPWIDTH)]) { //top right
            // Update player's world position if the above is true
            player.worldRow -= player.rdel;
            }
        } else {
            player.worldRow -= player.rdel;
            tilesRemaining--; 
            if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] == 0x0801, 0x0001, 0x0401, 0x0C01) { 
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles((oldCol) / 8, (oldRow + 8) / 8);
                }
            }
              oldRow = player.worldRow;    
        }
    }
    if(BUTTON_PRESSED(BUTTON_DOWN)) {
        player.aniState = DOWN;
        playSoundB(clickSound_data, clickSound_length, 0);
        if (cheatMode == 1) {
            if (player.worldRow + player.height - 1 < MAPHEIGHT - player.cdel 
            && backgroundcollision[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel - 1, MAPWIDTH)] //bottom left
            && backgroundcollision[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.height + player.rdel - 1, MAPWIDTH)] //bottom right
            ) {
                player.worldRow += player.cdel; 
            } 
        }else {
            player.worldRow += player.cdel; 
            tilesRemaining--;  
            if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] == 0x0801, 0x0001, 0x0401, 0X0C01) { 
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                    eraseTiles((oldCol) / 8, (oldRow + 8) / 8);
                }
            }
                oldRow = player.worldRow;
        }
    }

    if(BUTTON_PRESSED(BUTTON_LEFT)) {
        player.aniState = LEFT;
        playSoundB(clickSound_data, clickSound_length, 0);
        if (cheatMode == 1) {
              if (player.worldCol >= player.cdel  
            && backgroundcollision[OFFSET(player.worldCol - player.cdel, player.worldRow, MAPWIDTH)] //top left
            && backgroundcollision[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height -1 , MAPWIDTH)]) { //bottom left
            player.worldCol -= player.cdel;
            } 
        } else { 
            player.worldCol -= player.cdel;
            tilesRemaining--; 
            if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] == 0x0801, 0x0001, 0x0401, 0X0C01) { 
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles((oldCol) / 8, (oldRow + 8) / 8);
                }
            }
                oldCol = player.worldCol;
        }
    }
    if(BUTTON_PRESSED(BUTTON_RIGHT)) {
        player.aniState = RIGHT;
        playSoundB(clickSound_data, clickSound_length, 0);
            if (cheatMode == 1) {
                if (player.worldCol + player.width - 1 < MAPWIDTH - player.cdel 
                && backgroundcollision[OFFSET(player.worldCol + player.width + player.cdel -1 , player.worldRow, MAPWIDTH)] //top right
                && backgroundcollision[OFFSET(player.worldCol + player.width + player.cdel -1 , player.worldRow + player.height - 1, MAPWIDTH)]) { //bottom right
                player.worldCol += player.cdel;
                }
            } else {
                player.worldCol += player.cdel;
                tilesRemaining--; 
            if (SCREENBLOCK[30].tilemap[OFFSET((player.worldCol) / 8, (player.worldRow + 8) / 8, 256 / 8)] == 0x0801, 0x0001, 0x0401, 0X0C01) { 
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles((oldCol) / 8, (oldRow + 8) / 8);
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
            player.worldRow = 109;
            player.worldCol = 133;
        }
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	mouth.worldCol, mouth.worldRow, mouth.width, mouth.height)) {	
            player.life = 0; 
            playSoundB(biteSound_data, biteSound_length, 0);
        }
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	gate.worldCol, gate.worldRow, gate.width, gate.height)) {	
            reachGate = 1; 
        }
	} 

// Draw the player
void drawPlayer() {
    if (player.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & player.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[0].attr1 = (COLMASK & player.worldCol) | ATTR1_TINY;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState, player.curFrame);
    }
}

void initTeleport() {
    teleport.width = 16;
    teleport.height = 16;
    teleport.worldRow = 120;
    teleport.worldCol = 8;
    teleport.aniCounter = 0;
    teleport.curFrame = 0;
    teleport.numFrames = 4;
    teleport.aniState = 0; 
    teleport.life = 3;
}  

void updateTeleport() {
    teleport.aniCounter ++;
    if (teleport.aniCounter == 15) {
        teleport.aniState++;
    if (teleport.aniState >= 3) {
        teleport.aniState = 0; 
    } 
    teleport.aniCounter = 0;
    }   
}

void drawTeleport() {
    if (teleport.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[1].attr0 = (ROWMASK & teleport.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[1].attr1 = (COLMASK & teleport.worldCol) | ATTR1_SMALL;
        shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, teleport.aniState*2);
    }
}   

void initMouth() {
    mouth.width = 16;
    mouth.height = 16;
    mouth.worldRow = 104;
    mouth.worldCol = 208;
    mouth.aniCounter = 0;
    mouth.curFrame = 0;
    mouth.numFrames = 4;
    mouth.aniState = 0; 
}  

void updateMouth() {
    mouth.aniCounter ++;
    if (mouth.aniCounter == 15) {
        mouth.aniState++;
    if (mouth.aniState >= 4) {
        mouth.aniState = 0; 
    } 
    mouth.aniCounter = 0;
    }
}

void drawMouth() {
    if (mouth.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[2].attr0 = (ROWMASK & mouth.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[2].attr1 = (COLMASK & mouth.worldCol) | ATTR1_SMALL;
        shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, mouth.aniState*2);
    }
}   

void initGate() {
    gate.width = 16;
    gate.height = 16;
    gate.worldRow = 88;
    gate.worldCol = 192;
    gate.aniCounter = 0;
    gate.curFrame = 0;
    gate.numFrames = 4;
    gate.aniState = 0; 
}  

void updateGate() {
    gate.aniCounter ++;
    if (gate.aniCounter == 15) {
        gate.aniState++;
    if (gate.aniState >= 4) {
        gate.aniState = 0; 
    } 
    gate.aniCounter = 0;
    }   
}

void drawGate() {
    if (gate.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[3].attr0 = (ROWMASK & gate.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[3].attr1 = (COLMASK & gate.worldCol) | ATTR1_SMALL;
        shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, gate.aniState*2);
        }
} 

void eraseTiles(int tileCol, int tileRow) {
    SCREENBLOCK[31].tilemap[OFFSET(tileCol, tileRow, 256 / 8)] = 0x0000; //empty tile entry for normal map
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision[OFFSET(tileCol * 8 + i, tileRow * 8 + j, 256)] = 0;
        }
    }
    SCREENBLOCK[31].tilemap[OFFSET(tileCol+1, tileRow, 256 / 8)] = 0x0000; 
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
        backgroundcollision[OFFSET((tileCol + 1) * 8 + i, tileRow * 8 + j, 256)] = 0;
        }
    }
    SCREENBLOCK[31].tilemap[OFFSET(tileCol, tileRow-1, 256 / 8)] = 0x0000; 
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
        backgroundcollision[OFFSET(tileCol * 8 + i, (tileRow - 1) * 8 + j, 256)] = 0;
        }
    }
    SCREENBLOCK[31].tilemap[OFFSET(tileCol+1, tileRow-1, 256 / 8)] = 0x0000; //empty tile entry for normal map
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision[OFFSET((tileCol + 1) * 8 + i, (tileRow - 1) * 8 + j, 256)] = 0;
        }
    }
}