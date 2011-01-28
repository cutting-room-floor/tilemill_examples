@serif:"Times New Roman Regular","FreeSerif Medium","DejaVu Serif Book";
@serif_italic:"Times New Roman Italic","FreeSerif Italic","DejaVu Serif Italic";
@sans:"Arial Regular","Liberation Sans Regular","DejaVu Sans Book";

#country_label[zoom>1][zoom<6][COUNTRY='Canada'],
#country_label[zoom>1][zoom<6][COUNTRY='United States of America'],
#country_label[zoom>1][zoom<6][COUNTRY='Mexico'] {
  text-name:"[COUNTRY]";
  text-face-name:@serif;
  text-transform:uppercase;
  text-character-spacing:2;
  text-line-spacing:4;
  text-size:14;
  text-wrap-width:140;
  text-allow-overlap:true;
  text-halo-radius:2;
  text-halo-fill:rgba(255,255,255,0.75);
}

#city::caps[ADM0CAP=1] {
  text-name:"[NAME]";
  text-face-name:"Arial Bold";
  text-size:12;
  text-halo-radius:2;
  text-halo-fill:rgba(255,255,255,0.75);
}

#city::world[WORLDCITY=1][ADM0CAP!=1] {
  text-name:"[NAME]";
  text-face-name:"Arial Bold";
  text-size:11;
  text-halo-radius:2;
  text-halo-fill:rgba(255,255,255,0.75);
}

#city[CAPALT=0][zoom>3] {
  text-name:"[NAME]";
  text-face-name:"Arial Regular";
  text-size:9;
  text-halo-radius:1;
  text-halo-fill:rgba(255,255,255,0.75);
}

#park_label[zoom>5] {
  text-name:"[Unit_Name]";
  text-face-name:@serif_italic;
  text-fill:#063;
  text-size:12;
  text-halo-radius:1;
  text-halo-fill:rgba(255,255,255,0.75);
  text-wrap-width:30;
  text-line-spacing:2;
}

#geo-region {
  text-name:"[Name]";
  text-face-name:@serif_italic;
  text-fill:#036;
  text-size:11;
  text-halo-radius:1;
  text-halo-fill:rgba(255,255,255,0.75);
  text-wrap-width:30;
  text-line-spacing:2;
}
