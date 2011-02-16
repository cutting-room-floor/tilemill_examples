/* Fonts and font sets can be assigned to variables. The first font
   will be preferred, and fall back to subsequent fonts for characters
   that are not available, or if the entire font is not available to
   Mapnik. */
@futura_med: "Futura Medium","Function Pro Medium","Ubuntu Regular","Trebuchet MS Regular","DejaVu Sans Book";

@futura_bold: "Futura Bold","Function Pro Bold","Ubuntu Bold","Trebuchet MS Bold","DejaVu Sans Bold";

/* ---- Countries ---- */
/* @TODO: Short forms in crowded areas */
#country-name[zoom=2][SHAPE_AREA>20] {
  text-name:"[COUNTRY]";
  text-face-name: @futura_med;
  text-fill:@line * 0.6;
  text-size:9;
  text-transform:uppercase;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:1;
  text-line-spacing:1;
  text-wrap-width:30;
}
#country-name[zoom>2][SHAPE_AREA>15],
#country-name[zoom>3][SHAPE_AREA>5],
#country-name[zoom>4][SHAPE_AREA<=5] {
  text-name:"[COUNTRY]";
  text-face-name: @futura_med;
  text-fill:@line * 0.6;
  text-size:9;
  text-transform:uppercase;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:1;
  text-line-spacing:1;
  text-wrap-width:30;
  
  [zoom=4] {
    text-size:10;
    text-character-spacing:1;
    text-wrap-width:40;
  }
}
/*
#country-name[zoom=5] {
  text-size:13;
  text-character-spacing:2;
  text-line-spacing:3;
  text-wrap-width:50;
}
#country-name[zoom=6] {
  text-size:16;
  text-character-spacing:4;
  text-line-spacing:4;
  text-wrap-width:80;
}
*/
#cities[WORLDCITY=1][zoom>4] {
  text-name: "[NAME]";
  text-fill: @line * 0.3;
  text-face-name:@futura_med;
  text-size: 11;
  text-dy: -4;
  text-halo-fill: rgba(255,255,255,0.5);
  text-halo-radius: 1;
  point-file: url(../resources/icons/circle-7.png);
}

#cities[ADM0CAP=1][zoom>3] {
  text-name: "[NAME]";
  text-fill: @line * 0.3;
  text-face-name:@futura_med;
  text-size: 11;
  text-dy: -5;
  text-halo-fill: rgba(255,255,255,0.5);
  text-halo-radius: 1;
  point-file: url(../resources/icons/star-10.png);
}

#geo-lines[zoom>1] {
  text-dy:-7;
  text-name:"[DISPLAY]";
  text-face-name:@futura_med;
  text-fill:@line;
  text-placement:line;
  text-spacing:600;
}