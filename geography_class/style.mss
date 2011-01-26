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

@water: #def;
@land: #ffd;
@line: #268;

/* ---- Water bodies ---- */
Map { 
  background-color: @water; 
}

#lakes[Name1!=''][zoom>2] {
  polygon-fill:@water;
  line-color:@line * 1.5;
  line-width:1;
}

/* Waiting on mess.js issue #65 (?) for full functionality here */
#rivers[ScaleRank=1][zoom>2],
#rivers[ScaleRank=2][zoom>3],
#rivers[ScaleRank=3][zoom>4],
#rivers[ScaleRank=4][zoom>5],
#rivers[ScaleRank=5][zoom>6],
#rivers[ScaleRank=6][zoom>7] {
  line-color:@line * 1.5;
  line-width:1;
}

/* ---- Imaginary lines ---- */
#geo-lines {
  line-color:#268;
  line-dasharray:6,2;
  line-width:1.0;
}

#admin-0-line-land[zoom>1] {
  line-width:1;
  line-color:#fff;
  line-join:round;
}

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

/* Waiting on either mess.js issue #27 or a good strategy for 
example patterns and images.
#paper { 
  polygon-pattern-file: url(../images/trifold.png);
}*/