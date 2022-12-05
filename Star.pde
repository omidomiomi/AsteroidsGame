class Star //note that this class does NOT extend Floater
{
  private int supernovacolor;
  private int x;
  private int y;
  public Star(){
    supernovacolor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    x = (int)(Math.random()*400);
    y = (int)(Math.random()*400);
  }
  public void show(){
    fill(supernovacolor);
    stroke(supernovacolor);
    ellipse(x,y,10,10);
  }
}
class Asteroid extends Floater{
  private double rotspeed;
  public Asteroid(){
    rotspeed = Math.random()*10;
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -(int)(Math.random()*20);
    yCorners[0] = (int)(Math.random()*20);
    xCorners[1] = 0;
    yCorners[1] = (int)(Math.random()*20);
    xCorners[2] =(int)(Math.random()*20);
    yCorners[2] =(int)(Math.random()*20);
    xCorners[3] =(int)(Math.random()*20);
    yCorners[3] =0;
    xCorners[4] =(int)(Math.random()*20);
    yCorners[4] =-(int)(Math.random()*20);
    xCorners[5] = 0;
    yCorners[5] =-(int)(Math.random()*20);
    xCorners[6] =-(int)(Math.random()*20);
    yCorners[6] =-(int)(Math.random()*20);
    xCorners[7] =-(int)(Math.random()*20);
    yCorners[7] =0;
    //xCorners[0] = -10;
    //yCorners[0] = 10;
    //xCorners[1] = 0;
    //yCorners[1] = 6;
    //xCorners[2] =10;
    //yCorners[2] =10;
    //xCorners[3] =4;
    //yCorners[3] =0;
    //xCorners[4] =10;
    //yCorners[4] =-10;
    //xCorners[5] = 0;
    //yCorners[5] =-6;
    //xCorners[6] =-10;
    //yCorners[6] =-10;
    //xCorners[7] =-4;
    //yCorners[7] =0;
    myColor = color(255,255,255,200);
    myCenterX = Math.random()*401;
    myCenterY = Math.random()*401;
    myPointDirection = Math.random()*361;
    myXspeed = Math.random()*3;
    myYspeed = Math.random()*3;

  }
  public void show(){
    stroke(myColor);
    fill(0);
    super.show();
  }
  public void move(){
    turn(rotspeed);
    super.move();
  }
  public double getmyCenterX(){
    return myCenterX;
  }
  public double getmyCenterY(){
    return myCenterY;
  }
  public void setmyCenterX(double x){
    myCenterX = x;
  }
  public void setmyCenterY(double y){
    myCenterY = y;
  }
}
