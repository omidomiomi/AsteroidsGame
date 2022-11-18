Spaceship bob;
Star [] multiple;
public void setup() 
{
  size(400,400);
  bob = new Spaceship();
  multiple = new Star[200];
  for(int i =0; i<multiple.length; i++){
    multiple[i] = new Star();
  }
}
public void draw() 
{
  background(0);
    for(int i = 0; i<multiple.length; i++){
    multiple[i].show();
  }
  bob.show();
  bob.move();
}
  public void keyPressed(){
  if(key == 'h'){
    bob.hyperspace();
  }
  if(key == 'l'){
    bob.turn(-10);
  }
  if(key == 'r'){
    bob.turn(10);
  }
  if(key == 'a'){
    bob.accelerate(1);
  }
  }
