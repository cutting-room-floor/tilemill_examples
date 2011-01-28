/***********************************************************************

'Road Trip'
===========

Inspired by 

 
***********************************************************************/

@land: #FFF6E0;
@water: #C0E0F8;
@waterline: #8CE;

Map {
  background-color:@water;
}

#countries::outline {
  line-color:@waterline;
  line-width:1.6;
}
#countries::fill {
  polygon-fill:@land;
  polygon-gamma:0.75;
}
#countries::fill[OBJECTID=240] {
  polygon-fill:@land*1.1;
}

#lake::outline { line-color:@waterline; }
#lake::fill { polygon-fill:@water; }

#f {
  polygon-fill:#fff;
  polygon-opacity:0.5;
}

.park { line-color:#AD9; }
.park.area { polygon-fill:#DEB; }

#country_border::glow[zoom>2] {
  line-color:#F60;
  line-opacity:0.33;
  line-width:4;
}

#country_border { line-color:#408; }
#country_border[zoom<3] { line-width:0.4; }
#country_border[zoom=3] { line-width:0.6; }
#country_border[zoom=4] { line-width:0.8; }
#country_border[zoom=5] { line-width:1.0; }

#country_border_marine {
  line-color:#A06;
  line-dasharray:8,2;
  line-opacity:0.3;
  line-width:0.8;
}

#state_line::glow[zoom>2] {
  line-color:#FD0;
  line-opacity:0.2;
  line-width:3;
}
#state_line[zoom>2] {
  line-dasharray:2,2,10,2;
  line-width:0.6;
}
