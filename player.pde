
class Player extends gameObject {
  Timer t;
  int h; 
  public Player() {
    super(imagemap.get("playerShip"), 400, 400, 70, 70);
    t = new Timer(500);
    tag = "player";
    h = 5;
  }  
  public void move() {
    if (up == true) {
      y = y - 5;
    } else if (down == true) {
      y = y + 5;
    } else if (left == true) {
      x = x - 5;
    } else if (right == true) {
      x = x + 5;
    }
  }
  public void shoot() {

    if (space == true && t.checkTime() == true ) {
      new Missiles(x, y);
    }
  }
  public void checkCollision(){
    for(int a = 0;a < allobjects.size();a++){
      if(allobjects.get(a).tag == "enemy" && distance(this,allobjects.get(a))){
        allobjects.get(a).alive = false;

        h = h - 1;
      }
      if(h <= 0){
        alive = false;
        gameover = true;
        //noLoop();
      }
    }
  }
  public void update() {
    this.show();
    this.checkCollision();
    this.move();
    this.shoot();
  }
}
class Missiles extends gameObject {

  public Missiles(float x, float y) {
    super( imagemap.get("missileimage"), x, y, 20, 80);
  } 
  public void move() {
    y = y - 7;
  }
  public void checkCollision(){
    for(int a = 0;a < allobjects.size();a++){
      if(allobjects.get(a).tag == "enemy" && distance(this,allobjects.get(a))){
        allobjects.get(a).alive = false;

        alive = false;
      }
    }
  }
  public void update() {
    this.show();
    this.move();
    this.checkCollision();
  }
}
//1)write a move function for GameObject, missle, and player
//2) write an update function for GameObject
//3) in the update function of the GameObject run the move function and the show function
//4) in the move function of the missle make the missile move up
//5) in the move function of the player make the player move right (if you can program up down left right controls that would be better)
//6) in the draw function, instead of telling the missile and player to show up, tell the missile and the player to update
