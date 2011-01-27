/***********************************************************************

'Geography Class'
=================

Layers overview
---------------

#paper [world-extent.zip]
The shapefile is a square extending to the bounds of the map filled with
a repeating transparent pattern to give the map a folded paper texture.

#country-name [admin-0-point.zip]
Labeled points of the world's country names.

#cities [populated-places.zip]
Point locations of many of the world's large cities. Using various \
classification attributes in the shapefile, only certain cities will 
be shown at certain zoom levels.

#geo-lines [geographic-lines.zip]
Important lines such as the equator, Arctic and Antarctic circles, and 
the international date line.

#admin-0-line-land [admin-0-line-land.zip]
These are international borders that occur over land or lakes. 
International maritime borders are a separate layer.

#lakes [lakes.zip]
The worlds lakes.

 
***********************************************************************/

@water: #ddeeff;
@land: #ffffdd;
@line: #226688;

/* Water bodies */
Map { 
  background-color: @water; 
}

#lakes[Name1!=''][zoom>2] {
  polygon-fill:@water;
  line-color:@line * 1.5;
  line-width:1;
}

#rivers[ScaleRank=1][zoom>=3],
#rivers[ScaleRank=2][zoom>=4],
#rivers[ScaleRank=3][zoom>=5],
#rivers[ScaleRank=4][zoom>=5],
#rivers[ScaleRank=5][zoom>=6],
#rivers[ScaleRank=6][zoom>=6],
#rivers[ScaleRank=7][zoom>=7],
#rivers[ScaleRank=8][zoom>=7],
#rivers[ScaleRank=9][zoom>=8] {
  line-color:@line * 1.5;
}
#rivers[ScaleRank=1][zoom=3],
#rivers[ScaleRank=2][zoom=4],
#rivers[ScaleRank=3][zoom=5],
#rivers[ScaleRank=4][zoom=5],
#rivers[ScaleRank=5][zoom=6],
#rivers[ScaleRank=6][zoom=6],
#rivers[ScaleRank=7][zoom=7],
#rivers[ScaleRank=8][zoom=7],
#rivers[ScaleRank=9][zoom=8] {
  line-width:0.3;
}
#rivers[ScaleRank=1][zoom=4],
#rivers[ScaleRank=2][zoom=5],
#rivers[ScaleRank=3][zoom=6],
#rivers[ScaleRank=4][zoom=6],
#rivers[ScaleRank=5][zoom=7],
#rivers[ScaleRank=6][zoom=7],
#rivers[ScaleRank=7][zoom=8],
#rivers[ScaleRank=8][zoom=8],
#rivers[ScaleRank=9][zoom=9] {
  line-width:0.6;
}
#rivers[ScaleRank=1][zoom=5],
#rivers[ScaleRank=2][zoom=6],
#rivers[ScaleRank=3][zoom=7],
#rivers[ScaleRank=4][zoom=7],
#rivers[ScaleRank=5][zoom=8],
#rivers[ScaleRank=6][zoom=8],
#rivers[ScaleRank=7][zoom=9],
#rivers[ScaleRank=8][zoom=9],
#rivers[ScaleRank=9][zoom=10] {
  line-width:0.9;
}
#rivers[ScaleRank=1][zoom=6],
#rivers[ScaleRank=2][zoom=7],
#rivers[ScaleRank=3][zoom=8],
#rivers[ScaleRank=4][zoom=8],
#rivers[ScaleRank=5][zoom=9],
#rivers[ScaleRank=6][zoom=9],
#rivers[ScaleRank=7][zoom=10],
#rivers[ScaleRank=8][zoom=10],
#rivers[ScaleRank=9][zoom=11] {
  line-width:1.2;
}

/* Useful/significant lines */
#geo-lines {
  line-color:@line;
  line-dasharray:6,2;
  line-width:1.0;
}

#admin-0-line-land[zoom>1] {
  line-width:1;
  line-color:#fff;
  line-join:round;
}

/* Coastlines */
#land-glow::inner { 
  line-color:@line;
  line-width:2.5;
  line-opacity:0.8;
  line-join:round;
}
#land-glow::outer { 
  line-color:@line;
  line-width:5;
  line-opacity:0.1;
  line-join:round;
}

/* Transparent PNG overlay for paper texture */
#paper { 
  polygon-pattern-file:url(http://tilemill-data.s3.amazonaws.com/images/paperfolds_512.png);
}