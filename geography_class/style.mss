/***********************************************************************

'Geography Class'
=================

Copyright 2011 Development Seed
See LICENSE for details on permissions for copying and reuse.

Layers overview
---------------

#paper
The shapefile is a square extending to the bounds of the map

Styles overview
---------------
 
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