class Bullet extends Floater{

  public Bullet(Spaceship theShip){
    myCenterX = theShip.getmyCenterX();
    myCenterY = theShip.getmyCenterY();
    myXspeed = theShip.getmyXspeed();
    myYspeed = theShip.getmyYspeed();
    myPointDirection = theShip.getmyPointDirection();
    accelerate(6.0);
    //corners =3;
    //xCorners = new int [corners];
    //yCorners = new int [corners];
    //xCorners[0] = -10;
    //yCorners[0] = 10;
    //xCorners[1] = 10;
    //yCorners[1] = 0;
    //xCorners [2] = -10;
    //yCorners [2] = -10;
    myColor = color(255,0,0);
  }
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 25,5);
    super.show();
  }
  public double getmyCenterX(){
    return myCenterX;
  }
    public double getmyCenterY(){
    return myCenterY;
  }
}
