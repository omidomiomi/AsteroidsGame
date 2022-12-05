Spaceship bob;
Star [] multiple;
Asteroid [] Girl;
public void setup() 
{
  size(400,400);
  bob = new Spaceship();
  Girl = new Asteroid[20];
  multiple = new Star[200];
  for(int i =0; i<multiple.length; i++){
    multiple[i] = new Star();
  }
  for(int m =0; m<Girl.length; m++){
    Girl[m] = new Asteroid();
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
  for(int m =0; m<Girl.length; m++){
  Girl[m].show();
  Girl[m].move();
  if(dist((float)bob.getmyCenterX(),(float)bob.getmyCenterY(),(float)Girl[m].getmyCenterX(),(float)Girl[m].getmyCenterY()) < 20){
    bob.hyperspace();
    Girl[m].setmyCenterX(1000000000);
     Girl[m].setmyCenterY(1000000000);
}
    }

  }
  
     public void  keyPressed(){
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
