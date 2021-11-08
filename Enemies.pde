class Enemy1 extends gameObject{
  
  public Enemy1(float x,float y){
    super(imagemap.get("enemyShip"),x,y,70,70);
    
  }
  public void move(){
    y = y + 3;  
  }
  public void update(){
    this.show();
    this.move();
  }
}
class Enemy2 extends gameObject{
  
  public Enemy2(float x,float y){
    super(imagemap.get("enemyShip2"),x,y,70,70);
    
  }
  public void move(){
    y = y + 3;  
  }
  public void update(){
    this.show();
    this.move();
  }
}
class EMissiles extends gameObject{
  public EMissiles(float x,float y){
     super(imagemap.get("alienMissile"),x,y,30,70);
    
  } 
  public void move(){
     y = y + 5;
  }
  public void update(){
    this.show();
    this.move();
  }
}

//Homework, make a Enemy2 object and an EnemyMissile object
//make them both fall down
