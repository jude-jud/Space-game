//1) GameObject class will be the parent class,
//every character in the game needs these variables
//x,y,w,h,sprite
//write a constructor that will require the programmer to determine the values of those varibles through the use of parameters
//2)Program a class Player and a class Missile
//have those two class inherite from the GameObject class
//3)every GameObject in the game needs to be able to show up on the screen, so write a show function in the GameObject class that will draw the sprite using the x,y,w,h
//4)Use the player class and missile class to create an object and make it show up on the screen
class Player extends gameObject{
  
  public Player(){
    super(playership,400,400,70,70);
    
  }  
}
class Missiles extends gameObject{
  
  public Missiles(){
    super( missile,400,300,20,80);
    
  }  
}
