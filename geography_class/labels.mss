/* Waiting on mess.js issue #62
#city[ADM0CAP=1][zoom>6] {
  text-name: "[NAME]";
  text-fill: #000;
  text-face-name:"Function Pro Medium";
  text-size: 11;
  text-dy: -4;
  text-halo-fill: rgba(255,255,255,0.5);
  text-halo-radius: 1;
  point-file: url(../local_data/icon/circle-7.png);
  point-width:7;
  point-height:7;
}*/

@futura_med: "Futura Medium","Function Pro Medium","Ubuntu Regular","Trebuchet MS Regular","DejaVu Sans Book";

/* @TODO: Sizes based on zoomlevels (waiting on mess issue #49) */
#country-name {
  text-name:"[COUNTRY]";
  text-face-name: @futura_med;
  text-fill:#023;
  text-size:12;
  text-transform:uppercase;
  text-halo-fill:rgba(255,255,255,0.4);
  text-halo-radius:1;
  text-character-spacing:1;
  text-line-spacing:1;
  text-wrap-width:100;
}

#geo-lines {
  text-dy:-7;
  text-name:"[DISPLAY]";
  text-face-name:@futura_med;
  text-fill:#268;
  text-placement:line;
  text-spacing:600;
}