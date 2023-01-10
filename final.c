#include "myLib.h"
#include "game.h"
#include "finalScene.h"
#include "finalSceneCollision.h"
#include "doorSound.h"
#include "teleportSound.h"

OBJ_ATTR shadowOAM[128];
ANISPRITE player;
ANISPRITE key;
ANISPRITE lock;
ANISPRITE friend; 
ANISPRITE finalTeleport; 

unsigned char* finalSceneCollision = finalSceneCollisionBitmap;
int reachFinalTeleport; 
int reachFriend;
int reachKey;

enum {RIGHT, LEFT, UP, DOWN, IDLE};

// Initialize the game
void initFinalScene() {
 
    initPlayer5();
    initKey();
    initLock(); 
    initFinalTeleport();
    initFriend();
    
    reachFinalTeleport = 0;
    reachFriend = 0;
    reachKey = 0;
}

// Updates the game each frame
void updateFinalScene() {
	updatePlayer5();
    updateLock();
    updateKey(); 
    updateFinalTeleport();
    updateFriend(); 
}

// Draws the game each frame
void drawFinalScene() {

    drawPlayer5();
    drawLock();
    drawKey();
    drawFinalTeleport();
    drawFriend();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}

// Initialize the player
void initPlayer5() {
    player.width = 8;
    player.height = 8;
    player.rdel = 1;
    player.cdel = 1;
    player.worldRow = 105;
    player.worldCol = 218;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = LEFT;
    player.life = 1; 
}

// Handle every-frame actions of the player
void updatePlayer5() {
    if(BUTTON_PRESSED(BUTTON_UP)) {
        player.aniState = UP;
        if (player.worldRow > 0 
            && finalSceneCollision[OFFSET(player.worldCol, player.worldRow - player.rdel, MAPWIDTH)] //top left
            && finalSceneCollision[OFFSET(player.worldCol + player.width - 1, player.worldRow - player.rdel, MAPWIDTH)]) { //top right
            // Update player's world position if the above is true
            player.worldRow -= player.rdel;
        }
    }
    if(BUTTON_PRESSED(BUTTON_DOWN)) {
        player.aniState = DOWN;
        if (player.worldRow + player.height - 1 < MAPHEIGHT - player.cdel 
            && finalSceneCollision[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel - 1, MAPWIDTH)] //bottom left
            && finalSceneCollision[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.height + player.rdel - 1, MAPWIDTH)]) { //bottom right
            player.worldRow += player.cdel; 
        }
    }
    if(BUTTON_HELD(BUTTON_LEFT)) {
        player.aniState = LEFT;
            if (player.worldCol >= player.cdel  
            && finalSceneCollision[OFFSET(player.worldCol - player.cdel, player.worldRow, MAPWIDTH)] //top left
            && finalSceneCollision[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height -1 , MAPWIDTH)]) { //bottom left   
            player.worldCol -= player.cdel;
        }
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        player.aniState = RIGHT;
        if (player.worldCol + player.width - 1 < MAPWIDTH - player.cdel 
            && finalSceneCollision[OFFSET(player.worldCol + player.width + player.cdel -1 , player.worldRow, MAPWIDTH)] //top right
            && finalSceneCollision[OFFSET(player.worldCol + player.width + player.cdel -1 , player.worldRow + player.height - 1, MAPWIDTH)]){ //bottom right
            player.worldCol += player.cdel;
        }
    }
    player.aniCounter++;
        if (player.aniCounter % 10 == 0) {
            player.curFrame++;
        if(player.curFrame == player.numFrames) {
            player.curFrame = 0;
        }
    }
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	key.worldCol, key.worldRow, key.width, key.height)) {	
            reachKey = 1;
            playSoundB(doorSound_data, doorSound_length, 0);
            key.worldRow -=8;
    }
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	friend.worldCol, friend.worldRow, friend.width, friend.height)) {	
            reachFriend = 1; 
    }
    if(collision(player.worldCol, player.worldRow, player.width, player.height, 
    	finalTeleport.worldCol, finalTeleport.worldRow, finalTeleport.width, finalTeleport.height) && (reachFriend == 1)) {	
            reachFinalTeleport = 1;
    }
} 

void drawPlayer5() {
    if (player.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & player.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[0].attr1 = (COLMASK & player.worldCol) | ATTR1_TINY;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState, player.curFrame);
    }
}

void initLock() {
    lock.width = 32;
    lock.height = 32;
    lock.worldRow = 81;
    lock.worldCol = 144;
    lock.aniCounter = 0;
    lock.curFrame = 0;
    lock.numFrames = 4;
    lock.aniState = 0; 
}  

void updateLock() {
    lock.aniCounter ++;
    if (lock.aniCounter == 15) {
        lock.aniState++;
    if (lock.aniState >= 3) {
        lock.aniState = 0; 
    } 
        lock.aniCounter = 0;
    }
    if (reachKey == 1) {
        lock.worldRow = 49;
        lock.worldCol = 144;
    }
} 

void drawLock() {
    if (lock.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[1].attr0 = (ROWMASK & lock.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[1].attr1 = (COLMASK & lock.worldCol) | ATTR1_MEDIUM;
        shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(19, lock.aniState*4);
        }
}   

void initKey() {
    key.width = 8;
    key.height = 8;
    key.worldRow = 105;
    key.worldCol = 184;
    key.aniCounter = 0;
    key.curFrame = 0;
    key.numFrames = 4;
    key.aniState = 0; 
}  

void updateKey() {
    key.aniCounter ++;
    if (key.aniCounter == 15) {
        key.aniState++;
    if (key.aniState >= 4) {
        key.aniState = 0; 
    } 
    key.aniCounter = 0;
    }   
}

void drawKey() {
    if (key.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[2].attr0 = (ROWMASK & key.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[2].attr1 = (COLMASK & key.worldCol) | ATTR1_TINY;
        shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(18, key.aniState);
    }
}   

void initFinalTeleport() {
    finalTeleport.width = 32;
    finalTeleport.height = 32;
    finalTeleport.worldRow = 97;
    finalTeleport.worldCol = 16;
    finalTeleport.aniCounter = 0;
    finalTeleport.curFrame = 0;
    finalTeleport.numFrames = 4;
    finalTeleport.aniState = 0; 
}  

void updateFinalTeleport() {
    finalTeleport.aniCounter ++;
    if (finalTeleport.aniCounter == 15) {
        finalTeleport.aniState++;
    if (finalTeleport.aniState >= 3) {
        finalTeleport.aniState = 0; 
    } 
    finalTeleport.aniCounter = 0;
    }
} 

void drawFinalTeleport() {
    if (finalTeleport.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[4].attr0 = (ROWMASK & finalTeleport.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[4].attr1 = (COLMASK & finalTeleport.worldCol) | ATTR1_SMALL;
        shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, finalTeleport.aniState*2);
    }
}   

void initFriend() {
    friend.width = 8;
    friend.height = 8;
    friend.worldRow = 105;
    friend.worldCol = 157;
    friend.aniCounter = 0;
    friend.curFrame = 0;
    friend.numFrames = 4;
    friend.aniState = 0; 
}  

void updateFriend() {  
    friend.aniCounter ++;
    if (friend.aniCounter == 15) {
        friend.aniState++;
    if (friend.aniState >= 4) {
        friend.aniState = 0; 
    } 
        friend.aniCounter = 0;
    }        
    if (reachFriend == 1) {
        if(BUTTON_PRESSED(BUTTON_UP) && (reachFriend == 1)) {
        friend.aniState = UP;
        }
        if(BUTTON_PRESSED(BUTTON_DOWN) && (reachFriend == 1)) {
        friend.aniState = DOWN;
        }
        if(BUTTON_HELD(BUTTON_LEFT) && (reachFriend == 1)) {
            friend.aniState = LEFT;
            if (friend.worldCol >= friend.cdel  
            && finalSceneCollision[OFFSET(friend.worldCol - friend.cdel, friend.worldRow, MAPWIDTH)] //top left
            && finalSceneCollision[OFFSET(friend.worldCol - friend.cdel, friend.worldRow + friend.height -1 , MAPWIDTH)]) { //bottom left
                friend.worldCol = player.worldCol + 8;
                friend.worldCol -= player.cdel;
            }
        }
        if(BUTTON_HELD(BUTTON_RIGHT) && (reachFriend == 1)) {
            friend.aniState = RIGHT;
            if (friend.worldCol >= friend.cdel  
            && finalSceneCollision[OFFSET(friend.worldCol - friend.cdel, friend.worldRow, MAPWIDTH)] //top left
            && finalSceneCollision[OFFSET(friend.worldCol - friend.cdel, friend.worldRow + friend.height -1 , MAPWIDTH)]) { //bottom left
      
            friend.worldCol = player.worldCol - 8;
            friend.worldCol += player.cdel;
            }
        }
    }
}

void drawFriend() {
    if (friend.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[3].attr0 = (ROWMASK & friend.worldRow) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[3].attr1 = (COLMASK & friend.worldCol) | ATTR1_TINY;
        if (reachFriend == 1) {
        shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(14 + player.aniState, friend.aniState);
        } else {
            shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(14, friend.aniState);
        }
    }
} 



