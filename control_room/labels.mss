@sans:"Droid Sans Book","Liberation Sans Regular","Arial Regular","DejaVu Sans Book";
@sans_bold:"Droid Sans Bold","Liberation Sans Bold","Arial Bold","DejaVu Sans Bold";

#cities[WORLDCITY=1][zoom>3] {
  text-name:'[NAMEASCII]';
  text-face-name:@sans_bold;
  text-fill:#8EF;
  text-size:10;
  text-halo-radius:2;
  text-halo-fill:rgba(0,0,0,0.75);
}

#country-labels[zoom>2] {
  text-name:'[COUNTRY]';
  text-face-name:@sans;
  text-fill:#8EF * 0.6;
  text-size:10;
  text-transform:uppercase;
  text-character-spacing:1;
  text-wrap-width:120;
  text-line-spacing:2;
  text-halo-radius:2;
  text-halo-fill:rgba(0,0,0,0.5);
}