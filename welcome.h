
//{{BLOCK(welcome)

//======================================================================
//
//	welcome, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 519 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 16608 + 2048 = 19168
//
//	Time-stamp: 2021-12-03, 23:55:40
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WELCOME_H
#define GRIT_WELCOME_H

#define welcomeTilesLen 16608
extern const unsigned short welcomeTiles[8304];

#define welcomeMapLen 2048
extern const unsigned short welcomeMap[1024];

#define welcomePalLen 512
extern const unsigned short welcomePal[256];

#endif // GRIT_WELCOME_H

//}}BLOCK(welcome)
