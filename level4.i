# 1 "level4.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "level4.c"
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
# 2 "level4.c" 2
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
# 3 "level4.c" 2
# 1 "backgroundcollision4.h" 1
# 21 "backgroundcollision4.h"
extern const unsigned short backgroundcollision4Bitmap[19200];


extern const unsigned short backgroundcollision4Pal[256];
# 4 "level4.c" 2
# 1 "background4.h" 1
# 22 "background4.h"
extern const unsigned short background4Tiles[752];


extern const unsigned short background4Map[1024];


extern const unsigned short background4Pal[256];
# 5 "level4.c" 2
# 1 "tilesCollision4.h" 1
# 22 "tilesCollision4.h"
extern const unsigned short tilesCollision4Tiles[48];


extern const unsigned short tilesCollision4Map[1024];


extern const unsigned short tilesCollision4Pal[256];
# 6 "level4.c" 2
# 1 "clickSound.h" 1


extern const unsigned int clickSound_sampleRate;
extern const unsigned int clickSound_length;
extern const signed char clickSound_data[];
# 7 "level4.c" 2
# 1 "teleportSound.h" 1


extern const unsigned int teleportSound_sampleRate;
extern const unsigned int teleportSound_length;
extern const signed char teleportSound_data[];
# 8 "level4.c" 2
# 1 "biteSound.h" 1


extern const unsigned int biteSound_sampleRate;
extern const unsigned int biteSound_length;
extern const signed char biteSound_data[];
# 9 "level4.c" 2
# 1 "dyingSound.h" 1


extern const unsigned int dyingSound_sampleRate;
extern const unsigned int dyingSound_length;
extern const signed char dyingSound_data[];
# 10 "level4.c" 2

OBJ_ATTR shadowOAM[128];
ANISPRITE player;
ANISPRITE teleport;
ANISPRITE teleport2;
ANISPRITE teleport3;
ANISPRITE teleport4;
ANISPRITE teleport5;
ANISPRITE teleport6;
ANISPRITE mouth;
ANISPRITE mouth2;
ANISPRITE mouth3;
ANISPRITE mouth4;
ANISPRITE mouth5;
ANISPRITE mouth6;
ANISPRITE finalgate;

unsigned char* backgroundcollision4 = backgroundcollision4Bitmap;

int tilesRemaining4;
int reachfinalgate;
int hOff;
int vOff;
int cheatMode;


enum {RIGHT, LEFT, UP, DOWN, IDLE};


void initLevel4() {

    initPlayer4();
    initTeleport4();
    initMouth4();
    initGate4();

    DMANow(3, tilesCollision4Map, &((screenblock *)0x6000000)[30], 2048 / 2);
    DMANow(3, tilesCollision4Tiles, &((charblock *)0x6000000)[2], 96 / 2);
    DMANow(3, background4Map, &((screenblock *)0x6000000)[31], 2048 / 2);

    tilesRemaining4 = 62;
    reachfinalgate = 0;
    hOff = 9;
    cheatMode = 0;
}


void updateLevel4() {
 updatePlayer4();
    updateMouth4();
    updateGate4();
    updateTeleport4();
    hOff++;
}


void drawLevel4() {

    drawPlayer4();
    drawTeleport4();
    drawMouth4();
    drawGate4();

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
}


void initPlayer4() {

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


void updatePlayer4() {
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
            && backgroundcollision4[((player.worldRow - player.rdel)*(240)+(player.worldCol))]
            && backgroundcollision4[((player.worldRow - player.rdel)*(240)+(player.worldCol + player.width - 1))]) {
                player.worldRow -= player.rdel;
            }
        } else {
            player.worldRow -= player.rdel;
            tilesRemaining4--;
            if (((screenblock *)0x6000000)[30].tilemap[(((player.worldRow + 8) / 8)*(256 / 8)+((player.worldCol) / 8))] == 0x0401, 0x0801) {
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles4((oldCol) / 8, (oldRow + 8) / 8);
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
            && backgroundcollision4[((player.worldRow + player.height + player.rdel - 1)*(240)+(player.worldCol))]
            && backgroundcollision4[((player.worldRow + player.height + player.rdel - 1)*(240)+(player.worldCol + player.width - 1))]) {
            player.worldRow += player.cdel;
            }
        }else {
            player.worldRow += player.cdel;
            tilesRemaining4--;
        if (((screenblock *)0x6000000)[30].tilemap[(((player.worldRow + 8) / 8)*(256 / 8)+((player.worldCol) / 8))] == 0x0401, 0x0801) {
            if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles4((oldCol) / 8, (oldRow + 8) / 8);
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
            && backgroundcollision4[((player.worldRow)*(240)+(player.worldCol - player.cdel))]
            && backgroundcollision4[((player.worldRow + player.height -1)*(240)+(player.worldCol - player.cdel))]) {
            player.worldCol -= player.cdel;
            }
        } else {
            player.worldCol -= player.cdel;
            tilesRemaining4--;
        if (((screenblock *)0x6000000)[30].tilemap[(((player.worldRow + 8) / 8)*(256 / 8)+((player.worldCol) / 8))] == 0x0401, 0x0801) {
            if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles4((oldCol) / 8, (oldRow + 8) / 8);
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
            && backgroundcollision4[((player.worldRow)*(240)+(player.worldCol + player.width + player.cdel -1))]
            && backgroundcollision4[((player.worldRow + player.height - 1)*(240)+(player.worldCol + player.width + player.cdel -1))]) {
                player.worldCol += player.cdel;
            }
        } else {
            player.worldCol += player.cdel;
            tilesRemaining4--;
            if (((screenblock *)0x6000000)[30].tilemap[(((player.worldRow + 8) / 8)*(256 / 8)+((player.worldCol) / 8))] == 0x0401, 0x0801) {
                if (player.worldRow != oldRow || player.worldCol != oldCol) {
                eraseTiles4((oldCol) / 8, (oldRow + 8) / 8);
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
            player.worldRow = 132;
            player.worldCol = 212;
        }
    if(collision(player.worldCol, player.worldRow, player.width, player.height,
     teleport2.worldCol, teleport2.worldRow, teleport2.width, teleport2.height)) {
               playSoundB(teleportSound_data, teleportSound_length, 0);
            player.worldRow = 132;
            player.worldCol = 116;
        }
    if(collision(player.worldCol, player.worldRow, player.width, player.height,
     teleport3.worldCol, teleport3.worldRow, teleport3.width, teleport3.height)) {
               playSoundB(teleportSound_data, teleportSound_length, 0);
            player.worldRow = 132;
            player.worldCol = 52;
        }
    if(collision(player.worldCol, player.worldRow, player.width, player.height,
     teleport4.worldCol, teleport4.worldRow, teleport4.width, teleport4.height)) {
               playSoundB(teleportSound_data, teleportSound_length, 0);
            player.worldRow = 84;
            player.worldCol = 52;
        }
    if(collision(player.worldCol, player.worldRow, player.width, player.height,
     teleport5.worldCol, teleport5.worldRow, teleport5.width, teleport5.height)) {
               playSoundB(teleportSound_data, teleportSound_length, 0);
            player.worldRow = 36;
            player.worldCol = 180;
        }
        if(collision(player.worldCol, player.worldRow, player.width, player.height,
     teleport6.worldCol, teleport6.worldRow, teleport6.width, teleport6.height)) {
               playSoundB(teleportSound_data, teleportSound_length, 0);
            player.worldRow = 36;
            player.worldCol = 84;
        }
    if(collision(player.worldCol, player.worldRow, player.width, player.height,
     mouth.worldCol, mouth.worldRow, mouth.width, mouth.height) ||
        collision(player.worldCol, player.worldRow, player.width, player.height,
     mouth2.worldCol, mouth2.worldRow, mouth2.width, mouth2.height) ||
        collision(player.worldCol, player.worldRow, player.width, player.height,
     mouth3.worldCol, mouth3.worldRow, mouth3.width, mouth3.height) ||
        collision(player.worldCol, player.worldRow, player.width, player.height,
     mouth4.worldCol, mouth4.worldRow, mouth4.width, mouth4.height) ||
        collision(player.worldCol, player.worldRow, player.width, player.height,
     mouth5.worldCol, mouth5.worldRow, mouth5.width, mouth5.height) ||
        collision(player.worldCol, player.worldRow, player.width, player.height,
     mouth6.worldCol, mouth6.worldRow, mouth6.width, mouth6.height)) {
            player.life = 0;
            playSoundB(biteSound_data, biteSound_length, 0);
        }
    if(collision(player.worldCol, player.worldRow, player.width, player.height,
     finalgate.worldCol, finalgate.worldRow, finalgate.width, finalgate.height)) {
            reachfinalgate = 1;
        }
}

void drawPlayer4() {
    if (player.hide) {
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[0].attr0 = (0xFF & player.worldRow) | (0<<14) | (0<<8);
        shadowOAM[0].attr1 = (0x1FF & player.worldCol) | (0<<14);
        shadowOAM[0].attr2 = ((0)<<12) | ((player.curFrame)*32+(player.aniState));
    }
}

void initTeleport4() {
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
    teleport6.width = 16;
    teleport6.height = 16;

    teleport.worldRow = 16;
    teleport.worldCol = 80;
    teleport2.worldRow = 16;
    teleport2.worldCol = 176;
    teleport3.worldRow = 32;
    teleport3.worldCol = 208;
    teleport4.worldRow = 112;
    teleport4.worldCol = 32;
    teleport5.worldRow = 112;
    teleport5.worldCol = 64;
    teleport6.worldRow = 112;
    teleport6.worldCol = 112;

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
    teleport6.aniCounter = 0;
    teleport6.curFrame = 0;
    teleport6.numFrames = 4;
    teleport6.aniState = 0;
}

void updateTeleport4() {
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
    teleport6.aniCounter ++;
    if (teleport6.aniCounter == 15) {
        teleport6.aniState++;
    if (teleport6.aniState >= 3) {
        teleport6.aniState = 0;
    }
    teleport6.aniCounter = 0;
    }
}

void drawTeleport4() {
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
        shadowOAM[4].attr0 = (0xFF & teleport4.worldRow) | (0<<14) | (0<<8);
        shadowOAM[4].attr1 = (0x1FF & teleport4.worldCol) | (1<<14);
        shadowOAM[4].attr2 = ((0)<<12) | ((teleport4.aniState*2)*32+(4));
        shadowOAM[5].attr0 = (0xFF & teleport5.worldRow) | (0<<14) | (0<<8);
        shadowOAM[5].attr1 = (0x1FF & teleport5.worldCol) | (1<<14);
        shadowOAM[5].attr2 = ((0)<<12) | ((teleport5.aniState*2)*32+(4));
        shadowOAM[6].attr0 = (0xFF & teleport6.worldRow) | (0<<14) | (0<<8);
        shadowOAM[6].attr1 = (0x1FF & teleport6.worldCol) | (1<<14);
        shadowOAM[6].attr2 = ((0)<<12) | ((teleport6.aniState*2)*32+(4));
    }
}

void initMouth4() {
    mouth.width = 16;
    mouth.height = 16;
    mouth2.width = 16;
    mouth2.height = 16;
    mouth3.width = 16;
    mouth3.height = 16;
    mouth4.width = 16;
    mouth4.height = 16;
    mouth5.width = 16;
    mouth5.height = 16;
    mouth6.width = 16;
    mouth6.height = 16;
    mouth.worldRow = 16;
    mouth.worldCol = 48;
    mouth.aniCounter = 0;
    mouth.curFrame = 0;
    mouth.numFrames = 4;
    mouth.aniState = 0;

    mouth2.worldRow = 32;
    mouth2.worldCol = 112;
    mouth2.aniCounter = 0;
    mouth2.curFrame = 0;
    mouth2.numFrames = 4;
    mouth2.aniState = 0;

    mouth3.worldRow = 16;
    mouth3.worldCol = 144;
    mouth3.aniCounter = 0;
    mouth3.curFrame = 0;
    mouth3.numFrames = 4;
    mouth3.aniState = 0;

    mouth4.worldRow = 112;
    mouth4.worldCol = 48;
    mouth4.aniCounter = 0;
    mouth4.curFrame = 0;
    mouth4.numFrames = 4;
    mouth4.aniState = 0;

    mouth5.worldRow = 112;
    mouth5.worldCol = 144;
    mouth5.aniCounter = 0;
    mouth5.curFrame = 0;
    mouth5.numFrames = 4;
    mouth5.aniState = 0;

    mouth6.worldRow = 128;
    mouth6.worldCol = 176;
    mouth6.aniCounter = 0;
    mouth6.curFrame = 0;
    mouth6.numFrames = 4;
    mouth6.aniState = 0;


}

void updateMouth4() {
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
    mouth5.aniCounter ++;
    if (mouth5.aniCounter == 15) {
        mouth5.aniState++;
    if (mouth5.aniState >= 4) {
        mouth5.aniState = 0;
    }
    mouth5.aniCounter = 0;
    }
    mouth6.aniCounter ++;
    if (mouth6.aniCounter == 15) {
        mouth6.aniState++;
    if (mouth6.aniState >= 4) {
        mouth6.aniState = 0;
    }
    mouth6.aniCounter = 0;
    }
}

void drawMouth4() {
    if (mouth.hide) {
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[7].attr0 = (0xFF & mouth.worldRow) | (0<<14) | (0<<8);
        shadowOAM[7].attr1 = (0x1FF & mouth.worldCol) | (1<<14);
        shadowOAM[7].attr2 = ((0)<<12) | ((mouth.aniState*2)*32+(6));
        shadowOAM[8].attr0 = (0xFF & mouth2.worldRow) | (0<<14) | (0<<8);
        shadowOAM[8].attr1 = (0x1FF & mouth2.worldCol) | (1<<14);
        shadowOAM[8].attr2 = ((0)<<12) | ((mouth2.aniState*2)*32+(6));
        shadowOAM[9].attr0 = (0xFF & mouth3.worldRow) | (0<<14) | (0<<8);
        shadowOAM[9].attr1 = (0x1FF & mouth3.worldCol) | (1<<14);
        shadowOAM[9].attr2 = ((0)<<12) | ((mouth3.aniState*2)*32+(6));
        shadowOAM[10].attr0 = (0xFF & mouth4.worldRow) | (0<<14) | (0<<8);
        shadowOAM[10].attr1 = (0x1FF & mouth4.worldCol) | (1<<14);
        shadowOAM[10].attr2 = ((0)<<12) | ((mouth4.aniState*2)*32+(6));
        shadowOAM[11].attr0 = (0xFF & mouth5.worldRow) | (0<<14) | (0<<8);
        shadowOAM[11].attr1 = (0x1FF & mouth5.worldCol) | (1<<14);
        shadowOAM[11].attr2 = ((0)<<12) | ((mouth5.aniState*2)*32+(6));
        shadowOAM[12].attr0 = (0xFF & mouth6.worldRow) | (0<<14) | (0<<8);
        shadowOAM[12].attr1 = (0x1FF & mouth6.worldCol) | (1<<14);
        shadowOAM[12].attr2 = ((0)<<12) | ((mouth6.aniState*2)*32+(6));
    }
}

void initGate4() {
    finalgate.width = 32;
    finalgate.height = 32;
    finalgate.worldRow = 64;
    finalgate.worldCol = 112;
    finalgate.aniCounter = 0;
    finalgate.curFrame = 0;
    finalgate.numFrames = 4;
    finalgate.aniState = 0;
}

void updateGate4() {
    finalgate.aniCounter ++;
    if (finalgate.aniCounter == 15) {
        finalgate.aniState++;
    if (finalgate.aniState >= 4) {
        finalgate.aniState = 0;
    }
    finalgate.aniCounter = 0;
    }
}

void drawGate4() {
    if (finalgate.hide) {
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[13].attr0 = (0xFF & finalgate.worldRow) | (0<<14) | (0<<8);
        shadowOAM[13].attr1 = (0x1FF & finalgate.worldCol) | (2<<14);
        shadowOAM[13].attr2 = ((0)<<12) | ((finalgate.aniState*4)*32+(10));
        }
}

void eraseTiles4(int tileCol, int tileRow) {
    ((screenblock *)0x6000000)[31].tilemap[((tileRow)*(256 / 8)+(tileCol))] = 0x0000;
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision4[((tileRow * 8 + j)*(256)+(tileCol * 8 + i))] = 0;
        }
    }
    ((screenblock *)0x6000000)[31].tilemap[((tileRow)*(256 / 8)+(tileCol+1))] = 0x0000;
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision4[((tileRow * 8 + j)*(256)+((tileCol + 1) * 8 + i))] = 0;
        }
    }
    ((screenblock *)0x6000000)[31].tilemap[((tileRow-1)*(256 / 8)+(tileCol))] = 0x0000;
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision4[(((tileRow - 1) * 8 + j)*(256)+(tileCol * 8 + i))] = 0;
        }
    }
    ((screenblock *)0x6000000)[31].tilemap[((tileRow-1)*(256 / 8)+(tileCol+1))] = 0x0000;
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            backgroundcollision4[(((tileRow - 1) * 8 + j)*(256)+((tileCol + 1) * 8 + i))] = 0;
        }
    }
}
