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

#lakes[Name1!=''][zoom>2],
#lakes[Name1=''][zoom>4] {
  polygon-fill:@water;
  line-color:@line * 1.5;
  line-width:0.4;
  line-opacity:0.4;
}
#lakes[Name1!=''][zoom=4] {
  line-width:0.6;
  line-opacity:0.6;
}
#lakes[zoom=5] {
  line-width:2;
  line-opacity:0.8;
}
/*#lakes[zoom>5] {
  line-width:1.8;
  line-opacity:1;
}*/

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
  line-join:round;
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
  line-width:0.2;
  line-opacity:0.4;
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
  line-width:0.4;
  line-opacity:0.6;
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
  line-width:0.6;
  line-opacity:0.8;
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
  line-width:0.8;
  line-opacity:1;
}

#glacier { 
  polygon-fill:#fff;
  polygon-opacity:0.5;
}

/* Useful/significant lines */
#geo-lines {
  line-color:@line;
  line-dasharray:6,2;
}
#geo-lines[zoom=0] { line-width:0.2; }
#geo-lines[zoom=1] { line-width:0.4; }
#geo-lines[zoom=2] { line-width:0.6; }
#geo-lines[zoom=3] { line-width:0.8; }
#geo-lines[zoom>3] { line-width:1; }

#admin-0-line-land[zoom>1] {
  line-width:1;
  line-color:#fff;
  line-join:round;
}

#state[ADM0_A3="USA"],
#state[ADM0_A3="CAN"],
#state[ADM0_A3="AUS"],
#state[ADM0_A3="RUS"] {
  [zoom>3] {
    line-color:@line;
    line-opacity:0.25;
    line-width:1.2;
    line-dasharray:6,2,2,2;
  }
}

/* Coastlines */
#land-glow::inner { 
  line-color:@line;
  line-opacity:0.8;
  line-join:round;
  [zoom=0] { line-width:1.2; }
  [zoom=1] { line-width:1.6; }
  [zoom=2] { line-width:2; }
  [zoom>2] { line-width:2.4; }
}

#land-glow::outer[zoom>1] { 
  line-color:@line;
  line-width:5;
  line-opacity:0.1;
  line-join:round;
}

/* Transparent PNG overlay for paper texture */
#paper[zoom<2] { 
  polygon-pattern-file:url(../resources/textures/paperfolds_256.png);
}
#paper[zoom>1] { 
  polygon-pattern-file:url(../resources/textures/paperfolds_512.png);
}