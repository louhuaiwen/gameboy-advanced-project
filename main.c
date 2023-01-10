#include "myLib.h"
#include "game.h"
#include "spritesheet.h"
#include "background.h"
#include "welcome.h"
#include "paused.h"
#include "lose.h"
#include "win.h"
#include "introduction.h"
#include "introduction2.h"
#include "introduction3.h"
#include "background2.h"
#include "background3.h"
#include "background4.h"
#include "spookySong.h"
#include "darkSong.h"
#include "intenseSong.h"
#include "relaxMusic.h"
#include "teleportSound.h"
#include "clickSound.h"
#include "movingBackground.h"
#include "finalScene.h"
#include "final.h"
// State Prototypes
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

// States
enum {START, INTRO, INTRO2, INTRO3, LEVEL1, LEVEL2, LEVEL3, LEVEL4, PAUSE, PAUSE2, PAUSE3, PAUSE4, PAUSE5, 
WIN, LOSE, LOSE2, LOSE3, LOSE4, LOSE5, FINAL};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

//Randome Seed
int seed;
int hOff; 
int vOff;

int main() {

    initialize();
    while(1) {
        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;             
        // State Machine
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

// Sets up GBA
void initialize() {
    // Set up the display
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE| SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | 2;
    // Set up sound
    setupSounds();
	setupInterrupts();

    goToStart();
}

void goToStart() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE; 

    waitForVBlank();
    DMANow(3, welcomePal, PALETTE, welcomePalLen);   
    DMANow(3, welcomeTiles, &CHARBLOCK[0], welcomeTilesLen / 2); 
    DMANow(3, welcomeMap, &SCREENBLOCK[31], welcomeMapLen / 2);

    state = START;

    stopSound();  
	playSoundA(spookySong_data, spookySong_length, 1);
  
    // Begin the seed randomization
    seed = 0;
}

// Runs every frame of the start state
void start() {
    if (BUTTON_PRESSED(BUTTON_START)){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToIntroduction();
    }   
}
// Sets up the game state
void goToLevel1() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL; 
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | 2; 

    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE;

    DMANow(3, movingBackgroundTiles, &CHARBLOCK[1], movingBackgroundTilesLen / 2);
    DMANow(3, movingBackgroundMap, &SCREENBLOCK[28], movingBackgroundMapLen / 2);

    REG_BG2HOFF = vOff; 
    REG_BG2VOFF = hOff;

    waitForVBlank();

    // Set background
    DMANow(3, backgroundPal, PALETTE, 256);
    DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2); //the number in charblock and screenblock in DMA should match with what they have in control register
    // Set up the sprites
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = LEVEL1;
}

// Runs every frame of the game state
void level1() {
    updateGame();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToPause();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLose();
    } 
    if (BUTTON_PRESSED(BUTTON_A)){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initLevel2();
        goToLevel2();
    }
     if (BUTTON_PRESSED(BUTTON_B)){
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
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | 2; 
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE;
    DMANow(3, movingBackgroundTiles, &CHARBLOCK[1], movingBackgroundTilesLen / 2);
    DMANow(3, movingBackgroundMap, &SCREENBLOCK[28], movingBackgroundMapLen / 2);
    REG_BG2HOFF = vOff; 
    REG_BG2VOFF = hOff;

    waitForVBlank();
    DMANow(3, background2Pal, PALETTE, 256);
    DMANow(3, background2Tiles, &CHARBLOCK[0], background2TilesLen / 2); 
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = LEVEL2;
}

void level2() {
    updateLevel2();
    drawLevel2(); 
    if (BUTTON_PRESSED(BUTTON_START)){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToPause2();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLose2();
    } 
    if (BUTTON_PRESSED(BUTTON_A)){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initLevel3();
        goToLevel3();
    }
    if (BUTTON_PRESSED(BUTTON_B)){
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
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL; 
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE;
    DMANow(3, movingBackgroundTiles, &CHARBLOCK[1], movingBackgroundTilesLen / 2);
    DMANow(3, movingBackgroundMap, &SCREENBLOCK[28], movingBackgroundMapLen / 2);
    REG_BG2HOFF = vOff; 
    REG_BG2VOFF = hOff;

    waitForVBlank();
    DMANow(3, background3Pal, PALETTE, 256);
    DMANow(3, background3Tiles, &CHARBLOCK[0], background3TilesLen / 2); 
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    //Set up music
    stopSound();
	playSoundA(intenseSong_data, intenseSong_length, 1);

    state = LEVEL3;
}

void level3() {
    updateLevel3();
    drawLevel3(); 
    if (BUTTON_PRESSED(BUTTON_START)){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToPause3();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLose3();
    } 
    if (BUTTON_PRESSED(BUTTON_A)){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initLevel4();
        goToLevel4();
    }
    if (BUTTON_PRESSED(BUTTON_B)){
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
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL; 
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE;
    DMANow(3, movingBackgroundTiles, &CHARBLOCK[1], movingBackgroundTilesLen / 2);
    DMANow(3, movingBackgroundMap, &SCREENBLOCK[28], movingBackgroundMapLen / 2);
    REG_BG2HOFF = vOff; 
    REG_BG2VOFF = hOff;

    waitForVBlank();
    DMANow(3, background4Pal, PALETTE, 256);
    DMANow(3, background4Tiles, &CHARBLOCK[0], background4TilesLen / 2); 
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);    

    state = LEVEL4;
}

void level4() {
    updateLevel4();
    drawLevel4(); 
    if (BUTTON_PRESSED(BUTTON_START)){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToPause4();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLose4();
    } 
    if (BUTTON_PRESSED(BUTTON_A)){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initFinalScene();
        goToFinal();
    }
    if (BUTTON_PRESSED(BUTTON_B)){
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
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(29) | BG_SIZE_SMALL | 2;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;
    DMANow(3, movingBackgroundTiles, &CHARBLOCK[1], movingBackgroundTilesLen / 2);
    DMANow(3, movingBackgroundMap, &SCREENBLOCK[28], movingBackgroundMapLen / 2);
    REG_BG2HOFF = hOff; 
    REG_BG2VOFF = vOff;
    hOff = 9;

    waitForVBlank();
    DMANow(3, pausedPal, PALETTE, pausedPalLen);   
    DMANow(3, pausedTiles, &CHARBLOCK[0], pausedTilesLen / 2); 
    DMANow(3, pausedMap, &SCREENBLOCK[29], pausedMapLen / 2);

    state = PAUSE;
}

void goToPause2() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(29) | BG_SIZE_SMALL | 2;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;    
    DMANow(3, movingBackgroundTiles, &CHARBLOCK[1], movingBackgroundTilesLen / 2);
    DMANow(3, movingBackgroundMap, &SCREENBLOCK[28], movingBackgroundMapLen / 2);
    REG_BG2HOFF = hOff; 
    REG_BG2VOFF = vOff;
    hOff = 9;

    waitForVBlank();
    DMANow(3, pausedPal, PALETTE, pausedPalLen);   
    DMANow(3, pausedTiles, &CHARBLOCK[0], pausedTilesLen / 2); 
    DMANow(3, pausedMap, &SCREENBLOCK[29], pausedMapLen / 2);

    state = PAUSE2;
}

void goToPause3() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(29) | BG_SIZE_SMALL | 2;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;
    DMANow(3, movingBackgroundTiles, &CHARBLOCK[1], movingBackgroundTilesLen / 2);
    DMANow(3, movingBackgroundMap, &SCREENBLOCK[28], movingBackgroundMapLen / 2);
    REG_BG2HOFF = hOff; 
    REG_BG2VOFF = vOff;
    hOff = 9;

    waitForVBlank();
    DMANow(3, pausedPal, PALETTE, pausedPalLen);   
    DMANow(3, pausedTiles, &CHARBLOCK[0], pausedTilesLen / 2); 
    DMANow(3, pausedMap, &SCREENBLOCK[29], pausedMapLen / 2);

    state = PAUSE3;
}

void goToPause4() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(29) | BG_SIZE_SMALL | 2;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;
    DMANow(3, movingBackgroundTiles, &CHARBLOCK[1], movingBackgroundTilesLen / 2);
    DMANow(3, movingBackgroundMap, &SCREENBLOCK[28], movingBackgroundMapLen / 2);
    REG_BG2HOFF = hOff; 
    REG_BG2VOFF = vOff;
    hOff = 9;

    waitForVBlank();
    DMANow(3, pausedPal, PALETTE, pausedPalLen);   
    DMANow(3, pausedTiles, &CHARBLOCK[0], pausedTilesLen / 2); 
    DMANow(3, pausedMap, &SCREENBLOCK[29], pausedMapLen / 2);

    state = PAUSE4;
}


void goToPause5() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(29) | BG_SIZE_SMALL | 2;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;
    DMANow(3, movingBackgroundTiles, &CHARBLOCK[1], movingBackgroundTilesLen / 2);
    DMANow(3, movingBackgroundMap, &SCREENBLOCK[28], movingBackgroundMapLen / 2);
    REG_BG2HOFF = hOff; 
    REG_BG2VOFF = vOff;
    hOff = 9;

    waitForVBlank();
    DMANow(3, pausedPal, PALETTE, pausedPalLen);   
    DMANow(3, pausedTiles, &CHARBLOCK[0], pausedTilesLen / 2); 
    DMANow(3, pausedMap, &SCREENBLOCK[29], pausedMapLen / 2);

    state = PAUSE5;
}

void pause() {
    REG_BG2HOFF = hOff; 
    REG_BG2VOFF = vOff;
    hOff++;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLevel1();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void pause2() {
    REG_BG2HOFF = hOff; 
    REG_BG2VOFF = vOff;
    hOff++;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLevel2();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void pause3() {
    REG_BG2HOFF = hOff; 
    REG_BG2VOFF = vOff;
    hOff++;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLevel3();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void pause4() {
    REG_BG2HOFF = hOff; 
    REG_BG2VOFF = vOff;
    hOff++;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToLevel4();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void pause5() {
    REG_BG2HOFF = hOff; 
    REG_BG2VOFF = vOff;
    hOff++;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToFinal();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void goToWin() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    waitForVBlank();
    DMANow(3, winPal, PALETTE, winPalLen);   
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen / 2); 
    DMANow(3, winMap, &SCREENBLOCK[31], winMapLen / 2);

    stopSound();  
    playSoundB(teleportSound_data, teleportSound_length, 0);
	playSoundA(relaxMusic_data, relaxMusic_length, 1);

    state = WIN;
}

void goToLose() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;
    waitForVBlank();
    DMANow(3, losePal, PALETTE, losePalLen);   
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2); 
    DMANow(3, loseMap, &SCREENBLOCK[31], loseMapLen / 2);

    state = LOSE;
}

void goToLose2() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;
    waitForVBlank();
    DMANow(3, losePal, PALETTE, losePalLen);   
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[31], loseMapLen / 2);

    state = LOSE2;
}

void goToLose3() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;
    waitForVBlank();
    DMANow(3, losePal, PALETTE, losePalLen);   
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2); 
    DMANow(3, loseMap, &SCREENBLOCK[31], loseMapLen / 2);

    state = LOSE3;
}

void goToLose4() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;
    waitForVBlank();
    DMANow(3, losePal, PALETTE, losePalLen);   
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2); 
    DMANow(3, loseMap, &SCREENBLOCK[31], loseMapLen / 2);

    state = LOSE4;
}

// Runs every frame of the lose state
void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
}

void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_START)){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initGame();
        goToLevel1();
    }
}

void lose2() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_START)){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        initLevel2();
        goToLevel2();
    }
}

void lose3() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_START)){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);

        initLevel3();
        goToLevel3();
    }
}


void lose4() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_START)){
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);

        initLevel4();
        goToLevel4();
    }
}

void introduction(){
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        goToIntroduction2();
        
    }
}

void goToIntroduction() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;
    waitForVBlank();
    DMANow(3, introductionPal, PALETTE, introductionPalLen);   
    DMANow(3, introductionTiles, &CHARBLOCK[0], introductionTilesLen / 2); //the number in charblock and screenblock in DMA should match with what they have in control register
    DMANow(3, introductionMap, &SCREENBLOCK[31], introductionMapLen / 2);

    state = INTRO;
}


void introduction2(){
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        goToIntroduction3(); 
    }
}

void goToIntroduction2() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;
    waitForVBlank();
    DMANow(3, introduction2Pal, PALETTE, introduction2PalLen);   
    DMANow(3, introduction2Tiles, &CHARBLOCK[0], introduction2TilesLen / 2); 
    DMANow(3, introduction2Map, &SCREENBLOCK[31], introduction2MapLen / 2);

    state = INTRO2;
}
void introduction3(){
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        srand(seed);
        stopSound();
		playSoundA(darkSong_data, darkSong_length, 1);
        initGame();
        goToLevel1();  
    }
}
void goToIntroduction3() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;
    waitForVBlank();
    DMANow(3, introduction3Pal, PALETTE, introduction3PalLen);   
    DMANow(3, introduction3Tiles, &CHARBLOCK[0], introduction3TilesLen / 2); 
    DMANow(3, introduction3Map, &SCREENBLOCK[31], introduction3MapLen / 2);

    state = INTRO3;
}

void goToFinal() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;

    waitForVBlank();
    DMANow(3, finalScenePal, PALETTE, 256);
    DMANow(3, finalSceneTiles, &CHARBLOCK[0], finalSceneTilesLen / 2); 
    DMANow(3, finalSceneMap, &SCREENBLOCK[31], finalSceneMapLen / 2);  
 
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    stopSound();  
	playSoundA(spookySong_data, spookySong_length, 1);

    state = FINAL;
}

void final() {
    updateFinalScene();
    drawFinalScene(); 
    if (BUTTON_PRESSED(BUTTON_START)){
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToPause5();
    }  else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(clickSound_data, clickSound_length, 0);
        hideSprites();
        goToStart();
    }  
    if (BUTTON_PRESSED(BUTTON_A)){
        playSoundB(clickSound_data, clickSound_length, 0);
        goToWin();
    }
    if ((reachFriend == 1) && (reachFinalTeleport == 1)){
        goToWin();
    }  
}