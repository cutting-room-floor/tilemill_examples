/* @TODO: Text-size increases based on zoomlevels.
   Waiting on mess.js issue #49. */

/* Fonts and font sets can be assigned to variables. The first font
   will be preferred, and fall back to subsequent fonts for characters
   that are not available, or if the entire font is not available to
   Mapnik. */
@futura_med: "Futura Medium","Function Pro Medium","Ubuntu Regular","Trebuchet MS Regular","DejaVu Sans Book";

@futura_bold: "Futura Bold","Function Pro Bold","Ubuntu Bold","Trebuchet MS Bold","DejaVu Sans Bold";

/* @TODO: Short forms, hide smaller countries at lower zoom levels */
#country-name[zoom>2] {
  text-name:"[COUNTRY]";
  text-face-name: @futura_med;
  text-fill:@line * 0.6;
  text-size:9;
  text-transform:uppercase;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:1;
  text-line-spacing:1;
  text-wrap-width:50;
}
/* Waiting on TileMill issue #152
#country-name[zoom=4] {
  text-size:10;
  text-character-spacing:1;
  text-wrap-width:75;
}
#country-name[zoom=5] {
  text-size:11;
  text-character-spacing:2;
  text-wrap-width:100;
}
#country-name[zoom=6] {
  text-size:12;
  text-character-spacing:4;
  text-wrap-width:150;
} */

#cities[WORLDCITY=1][zoom>4] {
  text-name: "[NAME]";
  text-fill: @line * 0.3;
  text-face-name:@futura_med;
  text-size: 11;
  text-dy: -4;
  text-halo-fill: rgba(255,255,255,0.5);
  text-halo-radius: 1;
  point-file: url(../images/icons-maki/circle-7.png);
}

#cities[ADM0CAP=1][zoom>3] {
  text-name: "[NAME]";
  text-fill: @line * 0.3;
  text-face-name:@futura_med;
  text-size: 11;
  text-dy: -5;
  text-halo-fill: rgba(255,255,255,0.5);
  text-halo-radius: 1;
  point-file: url(../images/icons-maki/star-10.png);
}

#geo-lines[zoom>1] {
  text-dy:-7;
  text-name:"[DISPLAY]";
  text-face-name:@futura_med;
  text-fill:#268;
  text-placement:line;
  text-spacing:600;
}