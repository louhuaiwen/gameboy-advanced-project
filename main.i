# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
    int score;
} ANISPRITE;
# 200 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 211 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 251 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 287 "myLib.h"
typedef void (*ihp)(void);
# 307 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "main.c" 2
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
# 3 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 4 "main.c" 2
# 1 "background.h" 1
# 22 "background.h"
extern const unsigned short backgroundTiles[1024];


extern const unsigned short backgroundMap[1024];


extern const unsigned short backgroundPal[256];
# 5 "main.c" 2
# 1 "welcome.h" 1
# 22 "welcome.h"
extern const unsigned short welcomeTiles[8304];


extern const unsigned short welcomeMap[1024];


extern const unsigned short welcomePal[256];
# 6 "main.c" 2
# 1 "paused.h" 1
# 22 "paused.h"
extern const unsigned short pausedTiles[2496];


extern const unsigned short pausedMap[1024];


extern const unsigned short pausedPal[256];
# 7 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[4240];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[256];
# 8 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[8432];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[256];
# 9 "main.c" 2
# 1 "introduction.h" 1
# 22 "introduction.h"
extern const unsigned short introductionTiles[5664];


extern const unsigned short introductionMap[1024];


extern const unsigned short introductionPal[256];
# 10 "main.c" 2
# 1 "introduction2.h" 1
# 22 "introduction2.h"
extern const unsigned short introduction2Tiles[5824];


extern const unsigned short introduction2Map[1024];


extern const unsigned short introduction2Pal[256];
# 11 "main.c" 2
# 1 "introduction3.h" 1
# 22 "introduction3.h"
extern const unsigned short introduction3Tiles[5312];


extern const unsigned short introduction3Map[1024];


extern const unsigned short introduction3Pal[256];
# 12 "main.c" 2
# 1 "background2.h" 1
# 22 "background2.h"
extern const unsigned short background2Tiles[1408];


extern const unsigned short background2Map[1024];


extern const unsigned short background2Pal[256];
# 13 "main.c" 2
# 1 "background3.h" 1
# 22 "background3.h"
extern const unsigned short background3Tiles[640];


extern const unsigned short background3Map[1024];


extern const unsigned short background3Pal[256];
# 14 "main.c" 2
# 1 "background4.h" 1
# 22 "background4.h"
extern const unsigned short background4Tiles[752];


extern const unsigned short background4Map[1024];


extern const unsigned short background4Pal[256];
# 15 "main.c" 2
# 1 "spookySong.h" 1


extern const unsigned int spookySong_sampleRate;
extern const unsigned int spookySong_length;
extern const signed char spookySong_data[];
# 16 "main.c" 2
# 1 "darkSong.h" 1


extern const unsigned int darkSong_sampleRate;
extern const unsigned int darkSong_length;
extern const signed char darkSong_data[];
# 17 "main.c" 2
# 1 "intenseSong.h" 1


extern const unsigned int intenseSong_sampleRate;
extern const unsigned int intenseSong_length;
extern const signed char intenseSong_data[];
# 18 "main.c" 2
# 1 "relaxMusic.h" 1


extern const unsigned int relaxMusic_sampleRate;
extern const unsigned int relaxMusic_length;
extern const signed char relaxMusic_data[];
# 19 "main.c" 2
# 1 "teleportSound.h" 1


extern const unsigned int teleportSound_sampleRate;
extern const unsigned int teleportSound_length;
extern const signed char teleportSound_data[];
# 20 "main.c" 2
# 1 "clickSound.h" 1


extern const unsigned int clickSound_sampleRate;
extern const unsigned int clickSound_length;
extern const signed char clickSound_data[];
# 21 "main.c" 2
# 1 "movingBackground.h" 1
# 22 "movingBackground.h"
extern const unsigned short movingBackgroundTiles[1136];


extern const unsigned short movingBackgroundMap[1024];


extern const unsigned short movingBackgroundPal[256];
# 22 "main.c" 2
# 1 "finalScene.h" 1
# 22 "finalScene.h"
extern const unsigned short finalSceneTiles[8848];


extern const unsigned short finalSceneMap[1024];


extern const unsigned short finalScenePal[256];
# 23 "main.c" 2
# 1 "final.h" 1
# 1 "mylib.h" 1
# 2 "final.h" 2

extern ANISPRITE player;
extern ANISPRITE key;
extern ANISPRITE lock;
extern ANISPRITE friend;
extern ANISPRITE finalTeleport;

extern unsigned char* finalSceneCollision;

extern int reachFinalTeleport;
extern int reachFriend;
extern int reachKey;

extern enum {RIGHT, LEFT, UP, DOWN, IDLE};


void initFinalScene();
void updateFinalScene();
void drawFinalScene();
void initPlayer5();
void updatePlayer5();
void drawPlayer5();
void initLock();
void updateLock();
void drawLock();
void initKey();
void updateKey();
void drawKey();
void initFriend();
void updateFriend();
void drawFriend();
# 24 "main.c" 2

void goToStart();
void start();
void goToLevel1();
void level1();
void goToLevel2();
void level2();
void goToLevel3();
void level3();
void goToLevel4();
void level4();
void goToPause();
void pause();
void goToPause2();
void pause2();
void goToPause3();
void pause3();
void goToPause4();
void pause4();
void goToPause5();
void pause5();
void goToWin();
void win();
void goToLose();
void lose();
void goToLose2();
void lose2();
void goToLose3();
void lose3();
void goToLose4();
void lose4();
void goToIntroduction();
void introduction();
void goToIntroduction2();
void introduction2();
void goToIntroduction3();
void introduction3();
void goToFinal();
void final();


enum {START, INTRO, INTRO2, INTRO3, LEVEL1, LEVEL2, LEVEL3, LEVEL4, PAUSE, PAUSE2, PAUSE3, PAUSE4, PAUSE5,
WIN, LOSE, LOSE2, LOSE3, LOSE4, LOSE5, FINAL};
int state;


unsigned short buttons;
unsigned short oldButtons;


int seed;
int hOff;
int vOff;

int main() {

    initialize();
    while(1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch(state) {
            case START:
                start();
                break;
            case INTRO:
                introduction();
                break;
            case INTRO2:
                introduction2();
                break;
            case INTRO3:
                introduction3();
                break;
            case PAUSE:
                pause();
                break;
            case PAUSE2:
                pause2();
                break;
            case PAUSE3:
                pause3();
                break;
            case PAUSE4:
                pause4();
                break;
            case PAUSE5:
                pause5();
                break;
            case WIN:
                win();
                break;
            case LEVEL1:
                level1();
                break;
            case LEVEL2:
                level2();
                break;
            case LEVEL3:
                level3();
                break;
            case LEVEL4:
                level4();
                break;
            case LOSE:
                lose();
                break;
            case LOSE2:
                lose2();
                break;
            case LOSE3:
                lose3();
                break;
            case LOSE4:
                lose4();
                break;
            case FINAL:
                final();
                break;
        }
    }
}


void initialize() {

    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10)| (1<<12);
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(volatile unsigned short*)0x400000C) = ((1)<<2) | ((28)<<8) | (0<<14) | 2;

    setupSounds();
 setupInterrupts();

    goToStart();
}

void goToStart() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9);

    waitForVBlank();
    DMANow(3, welcomePal, ((unsigned short *)0x5000000), 512);
    DMANow(3, welcomeTiles, &((charblock *)0x6000000)[0], 16608 / 2);
    DMANow(3, welcomeMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    state = START;

    stopSound();
 playSoundA(spookySong_data, spookySong_length, 1);


    seed = 0;
}


void start() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToIntroduction();
    }
}

void goToLevel1() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(volatile unsigned short*)0x400000C) = ((1)<<2) | ((28)<<8) | (0<<14) | 2;

    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10) | (1<<12);

    DMANow(3, movingBackgroundTiles, &((charblock *)0x6000000)[1], 2272 / 2);
    DMANow(3, movingBackgroundMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    (*(volatile unsigned short *)0x04000018) = vOff;
    (*(volatile unsigned short *)0x0400001A) = hOff;

    waitForVBlank();


    DMANow(3, backgroundPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, backgroundTiles, &((charblock *)0x6000000)[0], 2048 / 2);

    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = LEVEL1;
}


void level1() {
    updateGame();
    drawGame();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToPause();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLose();
    }
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initLevel2();
        goToLevel2();
    }
     if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        cheatMode = 1;
    }
    if (cheatMode == 0) {
        if (tilesRemaining == 0 && reachGate == 1) {
            srand(seed);
            initLevel2();
            goToLevel2();
        }
        if((tilesRemaining > 0 && reachGate == 1)) {
            goToLose();
        }
    } else if (cheatMode == 1) {
        if (reachGate == 1) {
            srand(seed);
            initLevel2();
            goToLevel2();
        }
    }
    if (player.life == 0) {
        goToLose();
    }
}

void goToLevel2() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(volatile unsigned short*)0x400000C) = ((1)<<2) | ((28)<<8) | (0<<14) | 2;
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10) | (1<<12);
    DMANow(3, movingBackgroundTiles, &((charblock *)0x6000000)[1], 2272 / 2);
    DMANow(3, movingBackgroundMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000018) = vOff;
    (*(volatile unsigned short *)0x0400001A) = hOff;

    waitForVBlank();
    DMANow(3, background2Pal, ((unsigned short *)0x5000000), 256);
    DMANow(3, background2Tiles, &((charblock *)0x6000000)[0], 2816 / 2);
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = LEVEL2;
}

void level2() {
    updateLevel2();
    drawLevel2();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToPause2();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLose2();
    }
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initLevel3();
        goToLevel3();
    }
    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        cheatMode = 1;
    }
    if (cheatMode == 0) {
        if (tilesRemaining2 == 0 && reachGate2 == 1) {
            srand(seed);
            initLevel3();
            goToLevel3();
        }
        if ((tilesRemaining2 > 0 && reachGate2 == 1)) {
            goToLose2();
        }
    } else if (cheatMode == 1) {
        if (reachGate2 == 1){
            srand(seed);
            initLevel3();
            goToLevel3();
        }
    }
    if (player.life == 0) {
        goToLose2();
    }
}

void goToLevel3() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(volatile unsigned short*)0x400000C) = ((1)<<2) | ((28)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10) | (1<<12);
    DMANow(3, movingBackgroundTiles, &((charblock *)0x6000000)[1], 2272 / 2);
    DMANow(3, movingBackgroundMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000018) = vOff;
    (*(volatile unsigned short *)0x0400001A) = hOff;

    waitForVBlank();
    DMANow(3, background3Pal, ((unsigned short *)0x5000000), 256);
    DMANow(3, background3Tiles, &((charblock *)0x6000000)[0], 1280 / 2);
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    stopSound();
 playSoundA(intenseSong_data, intenseSong_length, 1);

    state = LEVEL3;
}

void level3() {
    updateLevel3();
    drawLevel3();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToPause3();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLose3();
    }
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initLevel4();
        goToLevel4();
    }
    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        cheatMode = 1;
    }
    if (cheatMode == 0) {
        if (tilesRemaining3 == 0 && reachGate3 == 1) {
            srand(seed);
            initLevel4();
            goToLevel4();
        }
        if ((tilesRemaining3 > 0 && reachGate3 == 1)) {
            goToLose3();
        }
    } else if (cheatMode == 1) {
        if (reachGate3 == 1){
            srand(seed);
            initLevel4();
            goToLevel4();
        }
    }
    if (player.life == 0) {
        goToLose3();
    }
}

void goToLevel4() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(volatile unsigned short*)0x400000C) = ((1)<<2) | ((28)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10) | (1<<12);
    DMANow(3, movingBackgroundTiles, &((charblock *)0x6000000)[1], 2272 / 2);
    DMANow(3, movingBackgroundMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000018) = vOff;
    (*(volatile unsigned short *)0x0400001A) = hOff;

    waitForVBlank();
    DMANow(3, background4Pal, ((unsigned short *)0x5000000), 256);
    DMANow(3, background4Tiles, &((charblock *)0x6000000)[0], 1504 / 2);
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = LEVEL4;
}

void level4() {
    updateLevel4();
    drawLevel4();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToPause4();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLose4();
    }
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initFinalScene();
        goToFinal();
    }
    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        cheatMode = 1;
    }
    if (cheatMode == 0) {
        if (tilesRemaining4 == 0 && reachfinalgate == 1) {
            srand(seed);
            initFinalScene();
            goToFinal();
        }
        if ((tilesRemaining4 > 0 && reachfinalgate == 1)) {
            goToLose4();
        }
    } else if (cheatMode == 1) {
        if (reachfinalgate == 1){
            srand(seed);
            initFinalScene();
            goToFinal();
        }
    }
    if (player.life == 0) {
        goToLose4();
    }
}

void goToPause() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((29)<<8) | (0<<14) | 2;
    (*(volatile unsigned short*)0x400000C) = ((1)<<2) | ((28)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    DMANow(3, movingBackgroundTiles, &((charblock *)0x6000000)[1], 2272 / 2);
    DMANow(3, movingBackgroundMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
    hOff = 9;

    waitForVBlank();
    DMANow(3, pausedPal, ((unsigned short *)0x5000000), 512);
    DMANow(3, pausedTiles, &((charblock *)0x6000000)[0], 4992 / 2);
    DMANow(3, pausedMap, &((screenblock *)0x6000000)[29], 2048 / 2);

    state = PAUSE;
}

void goToPause2() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((29)<<8) | (0<<14) | 2;
    (*(volatile unsigned short*)0x400000C) = ((1)<<2) | ((28)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    DMANow(3, movingBackgroundTiles, &((charblock *)0x6000000)[1], 2272 / 2);
    DMANow(3, movingBackgroundMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
    hOff = 9;

    waitForVBlank();
    DMANow(3, pausedPal, ((unsigned short *)0x5000000), 512);
    DMANow(3, pausedTiles, &((charblock *)0x6000000)[0], 4992 / 2);
    DMANow(3, pausedMap, &((screenblock *)0x6000000)[29], 2048 / 2);

    state = PAUSE2;
}

void goToPause3() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((29)<<8) | (0<<14) | 2;
    (*(volatile unsigned short*)0x400000C) = ((1)<<2) | ((28)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    DMANow(3, movingBackgroundTiles, &((charblock *)0x6000000)[1], 2272 / 2);
    DMANow(3, movingBackgroundMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
    hOff = 9;

    waitForVBlank();
    DMANow(3, pausedPal, ((unsigned short *)0x5000000), 512);
    DMANow(3, pausedTiles, &((charblock *)0x6000000)[0], 4992 / 2);
    DMANow(3, pausedMap, &((screenblock *)0x6000000)[29], 2048 / 2);

    state = PAUSE3;
}

void goToPause4() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((29)<<8) | (0<<14) | 2;
    (*(volatile unsigned short*)0x400000C) = ((1)<<2) | ((28)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    DMANow(3, movingBackgroundTiles, &((charblock *)0x6000000)[1], 2272 / 2);
    DMANow(3, movingBackgroundMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
    hOff = 9;

    waitForVBlank();
    DMANow(3, pausedPal, ((unsigned short *)0x5000000), 512);
    DMANow(3, pausedTiles, &((charblock *)0x6000000)[0], 4992 / 2);
    DMANow(3, pausedMap, &((screenblock *)0x6000000)[29], 2048 / 2);

    state = PAUSE4;
}


void goToPause5() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((29)<<8) | (0<<14) | 2;
    (*(volatile unsigned short*)0x400000C) = ((1)<<2) | ((28)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    DMANow(3, movingBackgroundTiles, &((charblock *)0x6000000)[1], 2272 / 2);
    DMANow(3, movingBackgroundMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
    hOff = 9;

    waitForVBlank();
    DMANow(3, pausedPal, ((unsigned short *)0x5000000), 512);
    DMANow(3, pausedTiles, &((charblock *)0x6000000)[0], 4992 / 2);
    DMANow(3, pausedMap, &((screenblock *)0x6000000)[29], 2048 / 2);

    state = PAUSE5;
}

void pause() {
    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
    hOff++;
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLevel1();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void pause2() {
    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
    hOff++;
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLevel2();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void pause3() {
    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
    hOff++;
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLevel3();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void pause4() {
    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
    hOff++;
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLevel4();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void pause5() {
    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
    hOff++;
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToFinal();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void goToWin() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9);
    waitForVBlank();
    DMANow(3, winPal, ((unsigned short *)0x5000000), 512);
    DMANow(3, winTiles, &((charblock *)0x6000000)[0], 16864 / 2);
    DMANow(3, winMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    stopSound();
    playSoundB(teleportSound_data, teleportSound_length, 0);
 playSoundA(relaxMusic_data, relaxMusic_length, 1);

    state = WIN;
}

void goToLose() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    waitForVBlank();
    DMANow(3, losePal, ((unsigned short *)0x5000000), 512);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[0], 8480 / 2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    state = LOSE;
}

void goToLose2() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    waitForVBlank();
    DMANow(3, losePal, ((unsigned short *)0x5000000), 512);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[0], 8480 / 2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    state = LOSE2;
}

void goToLose3() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    waitForVBlank();
    DMANow(3, losePal, ((unsigned short *)0x5000000), 512);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[0], 8480 / 2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    state = LOSE3;
}

void goToLose4() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    waitForVBlank();
    DMANow(3, losePal, ((unsigned short *)0x5000000), 512);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[0], 8480 / 2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    state = LOSE4;
}


void win() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void lose() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initGame();
        goToLevel1();
    }
}

void lose2() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initLevel2();
        goToLevel2();
    }
}

void lose3() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);

        initLevel3();
        goToLevel3();
    }
}


void lose4() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);

        initLevel4();
        goToLevel4();
    }
}

void introduction(){
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        goToIntroduction2();

    }
}

void goToIntroduction() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    waitForVBlank();
    DMANow(3, introductionPal, ((unsigned short *)0x5000000), 512);
    DMANow(3, introductionTiles, &((charblock *)0x6000000)[0], 11328 / 2);
    DMANow(3, introductionMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    state = INTRO;
}


void introduction2(){
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        goToIntroduction3();
    }
}

void goToIntroduction2() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    waitForVBlank();
    DMANow(3, introduction2Pal, ((unsigned short *)0x5000000), 512);
    DMANow(3, introduction2Tiles, &((charblock *)0x6000000)[0], 11648 / 2);
    DMANow(3, introduction2Map, &((screenblock *)0x6000000)[31], 2048 / 2);

    state = INTRO2;
}
void introduction3(){
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        stopSound();
  playSoundA(darkSong_data, darkSong_length, 1);
        initGame();
        goToLevel1();
    }
}
void goToIntroduction3() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10);
    waitForVBlank();
    DMANow(3, introduction3Pal, ((unsigned short *)0x5000000), 512);
    DMANow(3, introduction3Tiles, &((charblock *)0x6000000)[0], 10624 / 2);
    DMANow(3, introduction3Map, &((screenblock *)0x6000000)[31], 2048 / 2);

    state = INTRO3;
}

void goToFinal() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);

    waitForVBlank();
    DMANow(3, finalScenePal, ((unsigned short *)0x5000000), 256);
    DMANow(3, finalSceneTiles, &((charblock *)0x6000000)[0], 17696 / 2);
    DMANow(3, finalSceneMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    stopSound();
 playSoundA(spookySong_data, spookySong_length, 1);

    state = FINAL;
}

void final() {
    updateFinalScene();
    drawFinalScene();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToPause5();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))){
        playSoundB(clickSound_data, clickSound_length, 0);
        goToWin();
    }
    if ((reachFriend == 1) && (reachFinalTeleport == 1)){
        goToWin();
    }
}
