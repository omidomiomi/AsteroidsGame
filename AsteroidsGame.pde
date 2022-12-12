Spaceship bob;
Star [] multiple;
Asteroid [] Girl;
ArrayList <Bullet> bam;
public void setup() 
{
  size(400,400);
  bob = new Spaceship();
  Girl = new Asteroid[20];
  multiple = new Star[200];
  bam = new ArrayList <Bullet>();
  for(int i =0; i<multiple.length; i++){
    multiple[i] = new Star();
  }
  for(int m =0; m<Girl.length; m++){
    Girl[m] = new Asteroid();
}
for( int r = 0; r<bam.size(); r++){
  bam.add(new Bullet(bob));
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
if(dist((float)bob.getmyCenterX(),(float)bob.getmyCenterY(),(float)Girl[m].getmyCenterX(),(float)Girl[m].getmyCenterY()) < 20){
    bob.dead();
    break;
}
  for(int r = 0; r<bam.size(); r++){
    bam.get(r).show();
    bam.get(r).move();
  if(dist((float)bam.get(r).getmyCenterX(),(float)bam.get(r).getmyCenterY(),(float)Girl[m].getmyCenterX(),(float)Girl[m].getmyCenterY()) < 20){
    Girl[m].setmyCenterX(1000000000);
     Girl[m].setmyCenterY(1000000000);
     bam.remove(r);
}
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
  if(key == 'b'){
    bam.add(new Bullet(bob));
}
     }
