#road[Type='Major Highway'][zoom>1],
#road[Type='Secondary Highway'][zoom>1] {
  line-color:#B33;
}
/*#road[SOV_A3='USA'][Type='Major Highway'][zoom>1],
#road[SOV_A3='USA'][Type='Secondary Highway'][zoom>1] {
  line-color:#F00;
}*/

/* Roads - Z2 */
#road[Type='Major Highway'][zoom=2] { line-width:0.4; }
#road[Type='Secondary Highway'][zoom=2] { line-width:0.2; }
/* Roads - Z3 */
#road[Type='Major Highway'][zoom=3] { line-width:0.5; }
#road[Type='Secondary Highway'][zoom=3] { line-width:0.2; }
/* Roads - Z4 */
#road[Type='Major Highway'][zoom=4] { line-width:0.6; }
#road[Type='Secondary Highway'][zoom=4] { line-width:0.3; }
/* Roads - Z5 */
#road[Type='Major Highway'][zoom=5] { line-width:1; }
#road[Type='Secondary Highway'][zoom=5] { line-width:0.5; }
/* Roads - Z6 */
#road[Type='Major Highway'][zoom=6] { line-width:1.4; }
#road[Type='Secondary Highway'][zoom=6] { line-width:0.7; }

/* Railroads */
#rail[zoom>4] {
  line-color:#999;
  line-width:0.6;
}