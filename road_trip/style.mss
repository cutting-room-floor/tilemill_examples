@land: #FFF3E0;
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
  polygon-fill:@land*1.05;
}

#lake::outline { line-color:@waterline; }
#lake::fill { polygon-fill:@water; }

#glacier {
  polygon-fill:#fff;
  polygon-opacity:0.5;
}

.park { line-color:#AD9; }
.park.area { polygon-fill:#DEB; }

#country_borders::glow[zoom>2] {
  line-color:#F60;
  line-opacity:0.33;
  line-width:4;
}

#country_borders { line-color:#408; }
#country_borders[zoom<3] { line-width:0.4; }
#country_borders[zoom=3] { line-width:0.6; }
#country_borders[zoom=4] { line-width:0.8; }
#country_borders[zoom=5] { line-width:1.0; }

#state_line::glow[zoom>2] {
  line-color:#FD0;
  line-opacity:0.2;
  line-width:3;
}
#state_line[zoom>2] {
  line-dasharray:2,2,10,2;
  line-width:0.6;
}
