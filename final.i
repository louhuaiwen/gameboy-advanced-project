# 1 "final.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "final.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int life;
} ANISPRITE;
# 199 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 210 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 250 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 286 "myLib.h"
typedef void (*ihp)(void);
# 306 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "final.c" 2
# 1 "game.h" 1
# 10 "game.h"
extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE player;
extern ANISPRITE teleport;
extern ANISPRITE teleport2;
extern ANISPRITE teleport3;
extern ANISPRITE teleport4;
extern ANISPRITE teleport5;
extern ANISPRITE teleport6;
extern ANISPRITE mouth;
extern ANISPRITE mouth2;
extern ANISPRITE mouth3;
extern ANISPRITE mouth4;
extern ANISPRITE mouth5;
extern ANISPRITE mouth6;
extern ANISPRITE gate;
extern ANISPRITE key;
extern ANISPRITE lock;
extern ANISPRITE friend;
extern ANISPRITE finalTeleport;
extern int tilesRemaining;
extern int collisionCheck;
extern int life;
extern int reachGate;
extern int tilesRemaining2;
extern int collisionCheck2;
extern int life2;
extern int reachGate2;
extern int collisionCheck3;
extern int life3;
extern int reachGate3;
extern int tilesRemaining3;
extern int life4;
extern int reachfinalgate;
extern int tilesRemaining4;
extern int hOff;
extern int vOff;
extern int cheatMode;
extern int reachFinalGate;
extern int reachFinalTeleport;
extern int reachFriend;
extern int reachKey;


void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();
void initTeleport();
void updateTeleport();
void drawTeleport();
void initGate();
void updateGate();
void drawGate();
void updateTeleport2();
# 3 "final.c" 2
# 1 "finalScene.h" 1
# 22 "finalScene.h"
extern const unsigned short finalSceneTiles[8848];


extern const unsigned short finalSceneMap[1024];


extern const unsigned short finalScenePal[256];
# 4 "final.c" 2
# 1 "finalSceneCollision.h" 1
# 21 "finalSceneCollision.h"
extern const unsigned short finalSceneCollisionBitmap[19200];


extern const unsigned short finalSceneCollisionPal[256];
# 5 "final.c" 2
# 1 "doorSound.h" 1


extern const unsigned int doorSound_sampleRate;
extern const unsigned int doorSound_length;
extern const signed char doorSound_data[];
# 6 "final.c" 2
# 1 "teleportSound.h" 1


extern const unsigned int teleportSound_sampleRate;
extern const unsigned int teleportSound_length;
extern const signed char teleportSound_data[];
# 7 "final.c" 2

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


void updateFinalScene() {
 updatePlayer5();
    updateLock();
    updateKey();
    updateFinalTeleport();
    updateFriend();
}


void drawFinalScene() {

    drawPlayer5();
    drawLock();
    drawKey();
    drawFinalTeleport();
    drawFriend();

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
}


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


void updatePlayer5() {
    if((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6))))) {
        player.aniState = UP;
        if (player.worldRow > 0
            && finalSceneCollision[((player.worldRow - player.rdel)*(240)+(player.worldCol))]
            && finalSceneCollision[((player.worldRow - player.rdel)*(240)+(player.worldCol + player.width - 1))]) {

            player.worldRow -= player.rdel;
        }
    }
    if((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7))))) {
        player.aniState = DOWN;
        if (player.worldRow + player.height - 1 < 160 - player.cdel
            && finalSceneCollision[((player.worldRow + player.height + player.rdel - 1)*(240)+(player.worldCol))]
            && finalSceneCollision[((player.worldRow + player.height + player.rdel - 1)*(240)+(player.worldCol + player.width - 1))]) {
            player.worldRow += player.cdel;
        }
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        player.aniState = LEFT;
            if (player.worldCol >= player.cdel
            && finalSceneCollision[((player.worldRow)*(240)+(player.worldCol - player.cdel))]
            && finalSceneCollision[((player.worldRow + player.height -1)*(240)+(player.worldCol - player.cdel))]) {
            player.worldCol -= player.cdel;
        }
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        player.aniState = RIGHT;
        if (player.worldCol + player.width - 1 < 240 - player.cdel
            && finalSceneCollision[((player.worldRow)*(240)+(player.worldCol + player.width + player.cdel -1))]
            && finalSceneCollision[((player.worldRow + player.height - 1)*(240)+(player.worldCol + player.width + player.cdel -1))]){
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
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[0].attr0 = (0xFF & player.worldRow) | (0<<14) | (0<<8);
        shadowOAM[0].attr1 = (0x1FF & player.worldCol) | (0<<14);
        shadowOAM[0].attr2 = ((0)<<12) | ((player.curFrame)*32+(player.aniState));
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
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[1].attr0 = (0xFF & lock.worldRow) | (0<<14) | (0<<8);
        shadowOAM[1].attr1 = (0x1FF & lock.worldCol) | (2<<14);
        shadowOAM[1].attr2 = ((0)<<12) | ((lock.aniState*4)*32+(19));
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
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[2].attr0 = (0xFF & key.worldRow) | (0<<14) | (0<<8);
        shadowOAM[2].attr1 = (0x1FF & key.worldCol) | (0<<14);
        shadowOAM[2].attr2 = ((0)<<12) | ((key.aniState)*32+(18));
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
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[4].attr0 = (0xFF & finalTeleport.worldRow) | (0<<14) | (0<<8);
        shadowOAM[4].attr1 = (0x1FF & finalTeleport.worldCol) | (1<<14);
        shadowOAM[4].attr2 = ((0)<<12) | ((finalTeleport.aniState*2)*32+(4));
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
        if((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6)))) && (reachFriend == 1)) {
        friend.aniState = UP;
        }
        if((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7)))) && (reachFriend == 1)) {
        friend.aniState = DOWN;
        }
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5))) && (reachFriend == 1)) {
            friend.aniState = LEFT;
            if (friend.worldCol >= friend.cdel
            && finalSceneCollision[((friend.worldRow)*(240)+(friend.worldCol - friend.cdel))]
            && finalSceneCollision[((friend.worldRow + friend.height -1)*(240)+(friend.worldCol - friend.cdel))]) {
                friend.worldCol = player.worldCol + 8;
                friend.worldCol -= player.cdel;
            }
        }
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))) && (reachFriend == 1)) {
            friend.aniState = RIGHT;
            if (friend.worldCol >= friend.cdel
            && finalSceneCollision[((friend.worldRow)*(240)+(friend.worldCol - friend.cdel))]
            && finalSceneCollision[((friend.worldRow + friend.height -1)*(240)+(friend.worldCol - friend.cdel))]) {

            friend.worldCol = player.worldCol - 8;
            friend.worldCol += player.cdel;
            }
        }
    }
}

void drawFriend() {
    if (friend.hide) {
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[3].attr0 = (0xFF & friend.worldRow) | (0<<14) | (0<<8);
        shadowOAM[3].attr1 = (0x1FF & friend.worldCol) | (0<<14);
        if (reachFriend == 1) {
        shadowOAM[3].attr2 = ((0)<<12) | ((friend.aniState)*32+(14 + player.aniState));
        } else {
            shadowOAM[3].attr2 = ((0)<<12) | ((friend.aniState)*32+(14));
        }
    }
}
