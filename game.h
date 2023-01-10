// Constants
#define MAPHEIGHT 160
#define MAPWIDTH 240

//constant
#define LEVEL2TELEPORTCOUNT 2
#define LEVEL2MOUTHCOUNT 2

// Variables
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

// Prototypes
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
