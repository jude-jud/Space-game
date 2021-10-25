HashMap<String,PImage> imagemap;
PImage playership, missile;
Player p;
Missiles m;
void setup(){
  size(800, 800);
  imagemap = new HashMap<String,PImage>() ;
  playership =loadImage("images/playerShip.png");
  missile = loadImage("images/missileimage.png");
  imagemap.put("playership", playership);
  imagemap.put("missile",missile);
  p = new Player();
  m = new Missiles();
}
void draw(){
  background(255);
  p.show();
  m.show(); 
}
