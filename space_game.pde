PImage playership, missile;
Player p;
Missiles m;
void setup(){
  size(800, 800);
  playership =loadImage("images/playerShip.png");
  missile = loadImage("images/missileimage.png");
  p = new Player();
  m = new Missiles();
}
void draw(){
  background(255);
  p.show();
  m.show(); 
}
