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
