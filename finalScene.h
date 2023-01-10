
//{{BLOCK(finalScene)

//======================================================================
//
//	finalScene, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 553 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 17696 + 2048 = 20256
//
//	Time-stamp: 2021-12-06, 02:17:39
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_FINALSCENE_H
#define GRIT_FINALSCENE_H

#define finalSceneTilesLen 17696
extern const unsigned short finalSceneTiles[8848];

#define finalSceneMapLen 2048
extern const unsigned short finalSceneMap[1024];

#define finalScenePalLen 512
extern const unsigned short finalScenePal[256];

#endif // GRIT_FINALSCENE_H

//}}BLOCK(finalScene)
