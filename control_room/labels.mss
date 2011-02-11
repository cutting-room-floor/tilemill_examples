@sans:"Droid Sans Book","Liberation Sans Regular","Arial Regular","DejaVu Sans Book";
@sans_bold:"Droid Sans Bold","Liberation Sans Bold","Arial Bold","DejaVu Sans Bold";

#cities[WORLDCITY=1][zoom>3],
#cities[ADM0CAP=1][zoom>3],
#cities[SCALERANK<=4][zoom>4],
#cities[SCALERANK=5][zoom>5],
#cities[SCALERANK=6][zoom>6] {
  text-name:'[NAMEASCII]';
  text-face-name:@sans_bold;
  text-fill:#8EF;
  text-size:9;
  text-halo-radius:2;
  text-halo-fill:rgba(0,0,0,0.75);

  [SCALERANK<5][zoom=6] { text-size:10; }
  [SCALERANK<5][zoom>6] { text-size:11; }
  
  [SCALERANK=5][zoom>6] { text-size:10; }

  [WORLDCITY=1][zoom=5] { text-size:11; }
  [WORLDCITY=1][zoom=6] { text-size:12; }
  [WORLDCITY=1][zoom>6] { text-size:13; }
}

#country-labels[zoom=4][SHAPE_AREA>5],
#country-labels[zoom>4] {
  text-name:'[COUNTRY]';
  text-face-name:@sans;
  text-fill:#8EF * 0.6;
  text-size:10;
  text-transform:uppercase;
  text-character-spacing:1;
  text-wrap-width:40;
  text-line-spacing:2;
  text-halo-radius:2;
  text-halo-fill:rgba(0,0,0,0.5);
}