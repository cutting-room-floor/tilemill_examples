/***********************************************************************

'Geography Class'
=================

Copyright 2011 Development Seed
See LICENSE for details on permissions for copying and reuse.

Layers overview
---------------

#paper
The shapefile is a square extending to the bounds of the map filled with
a repeating transparent pattern to give the map a folded paper texture.

#country-name
@FIXME

#cities
Point locations of many of the world's large cities. Using various \
classification attributes in the shapefile, only certain cities will 
be shown at certain zoom levels.

#geo-lines
Important lines such as the equator, Arctic and Antarctic circles, and 
the international date line.

#admin-0-line-land
These are international borders that occur over land or lakes. 
International maritime borders are a separate layer.

 
***********************************************************************/

@water: #def;
@land: #ffd;
@line: #268;

Map { background-color: @water; }

#admin-0-line-land[zoom>1] {
  line-width:0.6;
  line-color:@line;
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

#lakes {
  polygon-fill:@water;
  line-color:@line;
  line-width:1.4;
}

#geo-lines {
  line-color:#268;
  line-dasharray:6,2;
  line-width:1.0;
}

/* #paper { polygon-pattern-file: url(../images/trifold.png); } */