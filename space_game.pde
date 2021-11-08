import java.io.File;
boolean up,down,left,right,space;
HashMap<String,PImage> imagemap;
PImage playership, missile,enemy1,enemy2,eMissile;
Player p;
Enemy1 e;
Enemy2 e2;
EMissiles em;
ArrayList<gameObject> allobjects = new ArrayList<gameObject>();
Timer e1t,e2t;
void setup(){
  String folderpath = sketchPath()+"/images";
  File folder = new File(folderpath);
  String[] filenames = folder.list();
  size(800, 800);
  imagemap = new HashMap<String,PImage>() ;
  for(int f = 0;f < filenames.length;f++){
    PImage image = loadImage("images/"+filenames[f]);  
    String k = filenames[f].substring(0,filenames[f].length()-4);
    imagemap.put(k,image);
  }
  p = new Player();
  e = new Enemy1(400,0);
  e2 = new Enemy2(300,0);
  em = new EMissiles(300,0);
  e1t = new Timer(1000);
  e2t = new Timer(1000);
}
void draw(){
  background(255);
  for(int i = 0;i < allobjects.size();i++){
    allobjects.get(i).update();
  }
  if (e1t.checkTime() == true){
    new Enemy1(random(50,750),0);
    e1t.setInterval(int(random(500,2000)));
  }
  if (e2t.checkTime() == true){
    new Enemy2(random(50,750),0);
    e2t.setInterval(int(random(1000,3000)));
  }
  
}

public void keyPressed(){
  if (keyCode == UP){
      up = true;
  }
  if (keyCode == DOWN){
      down = true;
  }
  if (keyCode == RIGHT){
      right = true;
  }
  if (keyCode == LEFT){
      left = true;
  }
  if (keyCode == 32){
      space = true;
  }
}
public void keyReleased(){
  if(keyCode == UP){
    up = false;
  }
  if (keyCode == DOWN){
      down = false;
  }
  if (keyCode == RIGHT){
      right = false;
  }
  if (keyCode == LEFT){
      left = false;
  }
  if (keyCode == 32){
      space = false;
  }
}
