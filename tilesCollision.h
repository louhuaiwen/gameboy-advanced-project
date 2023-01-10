
//{{BLOCK(tilesCollision)

//======================================================================
//
//	tilesCollision, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 3 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 96 + 2048 = 2656
//
//	Time-stamp: 2021-11-22, 21:21:46
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TILESCOLLISION_H
#define GRIT_TILESCOLLISION_H

#define tilesCollisionTilesLen 96
extern const unsigned short tilesCollisionTiles[48];

#define tilesCollisionMapLen 2048
extern const unsigned short tilesCollisionMap[1024];

#define tilesCollisionPalLen 512
extern const unsigned short tilesCollisionPal[256];

#endif // GRIT_TILESCOLLISION_H

//}}BLOCK(tilesCollision)
