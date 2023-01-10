#include "mylib.h"

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

// Initialize the game
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