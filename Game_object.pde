
class gameObject{
  float x,y,w,h;
  PImage sprite;
  public gameObject(PImage s,float xpos,float ypos,float wid,float hei){
    x = xpos;
    y = ypos;
    w = wid;
    h = hei;
    sprite = s;
    allobjects.add(this);
  }
  public void show(){
    image(sprite,x-w/2,y-h/2,w,h);
  }
  public void move(){
    
  }
  public void update(){
    this.show();
    this.move();
  }
}
