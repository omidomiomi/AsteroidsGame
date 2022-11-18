class Spaceship extends Floater  
{   
  public Spaceship(){
    corners =7;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -15;
    yCorners[0] = -8;
    xCorners[1] = 0;
    yCorners[1] = -5;
    xCorners[2] = 10;
    yCorners[2] = -5;
    xCorners[3] = 15;
    yCorners[3] = 0;
    xCorners[4] = 10;
    yCorners[4] = 5;
    xCorners[5] = 0;
    yCorners[5] = 5;
    xCorners[6] = -15;
    yCorners[6] = 8;
    myColor = color(255,255,255);
    myPointDirection = 0;
  }
  public void hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*401);
    myCenterY = (int)(Math.random()*401);
    myPointDirection = (int)(Math.random()*361);
  }
}
