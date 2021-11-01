
class Player extends gameObject{
  
  public Player(){
    super(imagemap.get("playership"),400,400,70,70);
    
  }  
  public void move(){
    if(keyCode == 38){
      y = y - 5;
    }
    else if(keyCode == 40){
      y = y + 5;
    }
    else if(keyCode == 37){
      x = x - 5;
    }
    else if(keyCode == 39){
      x = x + 5;
    }
  }
}
class Missiles extends gameObject{
  
  public Missiles(){
    super( imagemap.get("missile"),400,300,20,80);
    
  } 
  public void move(){
     y = y - 7;
  }
}
//1)write a move function for GameObject, missle, and player
//2) write an update function for GameObject
//3) in the update function of the GameObject run the move function and the show function
//4) in the move function of the missle make the missile move up
//5) in the move function of the player make the player move right (if you can program up down left right controls that would be better)
//6) in the draw function, instead of telling the missile and player to show up, tell the missile and the player to update
