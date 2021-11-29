class Enemy1 extends gameObject {

  public Enemy1(float x, float y) {
    super(imagemap.get("enemyShip"), x, y, 70, 70);
    tag = "enemy";
  }
  public void move() {
    y = y + 3;
  }
  public void update() {
    this.show();
    this.move();
  }
}
class Enemy2 extends gameObject {
  Timer t = new Timer(2000);
  public Enemy2(float x, float y) {
    super(imagemap.get("enemyShip2"), x, y, 70, 70);
    tag = "enemy";
  }
  public void move() {
    y = y + 3;
  }
  public void shoot() {
    if (t.checkTime() == true) {
      new EMissiles(x, y);
    }
  }
  public void update() {
    this.show();
    this.move();
    this.shoot();
  }
}
class EMissiles extends gameObject {
  public EMissiles(float x, float y) {
    super(imagemap.get("alienMissile"), x, y, 30, 70);
    tag = "enemy";
  } 
  public void move() {
    y = y + 5;
  }
  public void update() {
    this.show();
    this.move();
  }
}

//Homework:
//1)Program the Enemy2 to shoot EnemyMissiles using a timer.
//2) Program a collision check function with 2 GameObjects as parameter.
//-calculate the xDistance and calculate the yDistance
//-then calculate the hypothenuse
//-check if the hypothenuse(distance) is short enough for them to collide
//return either true or false
