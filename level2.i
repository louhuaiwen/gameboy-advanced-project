# 1 "level2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "level2.c"
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
# 2 "level2.c" 2
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
# 3 "level2.c" 2
# 1 "backgroundcollision2.h" 1
# 21 "backgroundcollision2.h"
extern const unsigned short backgroundcollision2Bitmap[19200];


extern const unsigned short backgroundcollision2Pal[256];
# 4 "level2.c" 2
# 1 "background2.h" 1
# 22 "background2.h"
extern const unsigned short background2Tiles[1408];


extern const unsigned short background2Map[1024];


extern const unsigned short background2Pal[256];
# 5 "level2.c" 2
# 1 "tilesCollision2.h" 1
# 22 "tilesCollision2.h"
extern const unsigned short tilesCollision2Tiles[48];


extern const unsigned short tilesCollision2Map[1024];


extern const unsigned short tilesCollision2Pal[256];
# 6 "level2.c" 2
# 1 "clickSound.h" 1


extern const unsigned int clickSound_sampleRate;
extern const unsigned int clickSound_length;
extern const signed char clickSound_data[];
# 7 "level2.c" 2
# 1 "teleportSound.h" 1


extern const unsigned int teleportSound_sampleRate;
extern const unsigned int teleportSound_length;
extern const signed char teleportSound_data[];
# 8 "level2.c" 2
# 1 "biteSound.h" 1


extern const unsigned int biteSound_sampleRate;
extern const unsigned int biteSound_length;
extern const signed char biteSound_data[];
# 9 "level2.c" 2
# 1 "dyingSound.h" 1


extern const unsigned int dyingSound_sampleRate;
extern const unsigned int dyingSound_length;
extern const signed char dyingSound_data[];
# 10 "level2.c" 2

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


enum {RIGHT, LEFT, UP, DOWN, IDLE};


void initLevel2() {

    initPlayer2();
    initTeleport2();
    initMouth2();
    initGate2();

    DMANow(3, tilesCollision2Map, &((screenblock *)0x6000000)[30], 2048 / 2);
    DMANow(3, tilesCollision2Tiles, &((charblock *)0x6000000)[2], 96 / 2);
    DMANow(3, background2Map, &((screenblock *)0x6000000)[31], 2048 / 2);

    tilesRemaining2 = 47;
    reachGate2 = 0;
    hOff = 9;
    cheatMode = 0;

}


void updateLevel2() {
 updatePlayer2();
    updateMouth2();
    updateGate2();
    updateTeleport2();
    hOff++;
}


void drawLevel2() {
    drawPlayer2();
    drawTeleport2();
    drawMouth2();
    drawGate2();

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
}

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

void updatePlayer2() {
    int oldRow = player.worldRow;
    int oldCol = player.worldCol;
    if (cheatMode == 0) {
        if (((screenblock *)0x6000000)[31].tilemap[(((player.worldRow + 8) / 8)*(256 / 8)+((player.worldCol) / 8))] == 0x0000) {
            player.life = 0;
            playSoundB(dyingSound_data, dyingSound_length, 0);
        }
    }
    if((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        player.aniState = UP;
        if (cheatMode == 1) {
             if (player.worldRow > 0
            && backgroundcollision2[((player.worldRow - player.rdel)*(240)+(player.worldCol))]
            && backgroundcollision2[((player.worldRow - player.rdel)*(240)+(player.worldCol + player.width - 1))]
            ) {

                player.worldRow -= player.rdel;
            }
        } else {
            player.worldRow -= player.rdel;
            tilesRemaining2--;
            if (((screenblock *)0x6000000)[30].tilemap[(((player.worldRow + 8) / 8)*(256 / 8)+((player.worldCol) / 8))] >> 8 == 0x0008, 0x0402, 0x0c02) {
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles2((oldCol) / 8, (oldRow + 8) / 8);
                }
            }
                oldRow = player.worldRow;
        }
    }
    if((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        player.aniState = DOWN;
        if (cheatMode == 1) {
            if (player.worldRow + player.height - 1 < 160 - player.cdel
            && backgroundcollision2[((player.worldRow + player.height + player.rdel - 1)*(240)+(player.worldCol))]
            && backgroundcollision2[((player.worldRow + player.height + player.rdel - 1)*(240)+(player.worldCol + player.width - 1))]) {
                player.worldRow += player.cdel;
            }
        }else {
            player.worldRow += player.cdel;
            tilesRemaining2--;
        if (((screenblock *)0x6000000)[30].tilemap[(((player.worldRow + 8) / 8)*(256 / 8)+((player.worldCol) / 8))] >> 8 == 0x0008, 0x0402, 0x0c02) {
            if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles2((oldCol) / 8, (oldRow + 8) / 8);
            }
        }
                oldRow = player.worldRow;
        }
    }
    if((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        player.aniState = LEFT;
        if (cheatMode == 1) {
            if (player.worldCol >= player.cdel
            && backgroundcollision2[((player.worldRow)*(240)+(player.worldCol - player.cdel))]
            && backgroundcollision2[((player.worldRow + player.height -1)*(240)+(player.worldCol - player.cdel))]) {
                player.worldCol -= player.cdel;
            }
        } else {
            player.worldCol -= player.cdel;
            tilesRemaining2--;
            if (((screenblock *)0x6000000)[30].tilemap[(((player.worldRow + 8) / 8)*(256 / 8)+((player.worldCol) / 8))] >> 8 == 0x0008, 0x0402, 0x0c02) {
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                    eraseTiles2((oldCol) / 8, (oldRow + 8) / 8);
                }
            }
                oldCol = player.worldCol;
        }
    }

    if((!(~(oldButtons)&((1<<4))) && (~buttons & ((1<<4))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        player.aniState = RIGHT;
            if (cheatMode == 1) {
                if (player.worldCol + player.width - 1 < 240 - player.cdel
            && backgroundcollision2[((player.worldRow)*(240)+(player.worldCol + player.width + player.cdel -1))]
            && backgroundcollision2[((player.worldRow + player.height - 1)*(240)+(player.worldCol + player.width + player.cdel -1))]
                ) {
                player.worldCol += player.cdel;
            }
        } else {
            player.worldCol += player.cdel;
            tilesRemaining2--;
            if (((screenblock *)0x6000000)[30].tilemap[(((player.worldRow + 8) / 8)*(256 / 8)+((player.worldCol) / 8))] >> 8 == 0x0008, 0x0402, 0x0c02) {
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles2((oldCol) / 8, (oldRow + 8) / 8);
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


void drawPlayer2() {
    if (player.hide) {
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[0].attr0 = (0xFF & player.worldRow) | (0<<14) | (0<<8);
        shadowOAM[0].attr1 = (0x1FF & player.worldCol) | (0<<14);
        shadowOAM[0].attr2 = ((0)<<12) | ((player.curFrame)*32+(player.aniState));
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
            shadowOAM[0].attr0 |= (2<<8);
        } else {
            shadowOAM[1].attr0 = (0xFF & teleport.worldRow) | (0<<14) | (0<<8);
            shadowOAM[1].attr1 = (0x1FF & teleport.worldCol) | (1<<14);
            shadowOAM[1].attr2 = ((0)<<12) | ((teleport.aniState*2)*32+(4));
            shadowOAM[2].attr0 = (0xFF & teleport2.worldRow) | (0<<14) | (0<<8);
            shadowOAM[2].attr1 = (0x1FF & teleport2.worldCol) | (1<<14);
            shadowOAM[2].attr2 = ((0)<<12) | ((teleport2.aniState*2)*32+(4));
            shadowOAM[3].attr0 = (0xFF & teleport3.worldRow) | (0<<14) | (0<<8);
            shadowOAM[3].attr1 = (0x1FF & teleport3.worldCol) | (1<<14);
            shadowOAM[3].attr2 = ((0)<<12) | ((teleport3.aniState*2)*32+(4));
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
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[4].attr0 = (0xFF & mouth.worldRow) | (0<<14) | (0<<8);
        shadowOAM[4].attr1 = (0x1FF & mouth.worldCol) | (1<<14);
        shadowOAM[4].attr2 = ((0)<<12) | ((mouth.aniState*2)*32+(6));
        shadowOAM[5].attr0 = (0xFF & mouth2.worldRow) | (0<<14) | (0<<8);
        shadowOAM[5].attr1 = (0x1FF & mouth2.worldCol) | (1<<14);
        shadowOAM[5].attr2 = ((0)<<12) | ((mouth2.aniState*2)*32+(6));
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
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[6].attr0 = (0xFF & gate.worldRow) | (0<<14) | (0<<8);
        shadowOAM[6].attr1 = (0x1FF & gate.worldCol) | (1<<14);
        shadowOAM[6].attr2 = ((0)<<12) | ((gate.aniState*2)*32+(8));
        }
}

void eraseTiles2(int tileCol, int tileRow) {
    ((screenblock *)0x6000000)[31].tilemap[((tileRow)*(256 / 8)+(tileCol))] = 0x0000;
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision2[((tileRow * 8 + j)*(256)+(tileCol * 8 + i))] = 0;
        }
    }
    ((screenblock *)0x6000000)[31].tilemap[((tileRow)*(256 / 8)+(tileCol+1))] = 0x0000;
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision2[((tileRow * 8 + j)*(256)+((tileCol + 1) * 8 + i))] = 0;
        }
    }
    ((screenblock *)0x6000000)[31].tilemap[((tileRow-1)*(256 / 8)+(tileCol))] = 0x0000;
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision2[(((tileRow - 1) * 8 + j)*(256)+(tileCol * 8 + i))] = 0;
        }
    }
    ((screenblock *)0x6000000)[31].tilemap[((tileRow-1)*(256 / 8)+(tileCol+1))] = 0x0000;
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision2[(((tileRow - 1) * 8 + j)*(256)+((tileCol + 1) * 8 + i))] = 0;
        }
    }
}
