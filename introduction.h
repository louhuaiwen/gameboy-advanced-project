
//{{BLOCK(introduction)

//======================================================================
//
//	introduction, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 354 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 11328 + 2048 = 13888
//
//	Time-stamp: 2021-12-05, 20:43:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INTRODUCTION_H
#define GRIT_INTRODUCTION_H

#define introductionTilesLen 11328
extern const unsigned short introductionTiles[5664];

#define introductionMapLen 2048
extern const unsigned short introductionMap[1024];

#define introductionPalLen 512
extern const unsigned short introductionPal[256];

#endif // GRIT_INTRODUCTION_H

//}}BLOCK(introduction)
