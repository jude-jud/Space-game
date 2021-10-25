
class gameObject{
  float x,y,w,h;
  PImage sprite;
  public gameObject(PImage s,float xpos,float ypos,float wid,float hei){
    x = xpos;
    y = ypos;
    w = wid;
    h = hei;
    sprite = s;
  }
  public void show(){
    image(sprite,x,y,w,h);
  }
}
