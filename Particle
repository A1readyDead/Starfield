class Particle
{
  private int myColor, mySpeed, myAngle;
  private int myX, myY;
  Particle(){
   myX = (int)(Math.random() * 50) + 225;
   myY = (int)(Math.random() * 50) + 225;
   myColor = (int)(Math.random() * 205) + 50; 
   mySpeed = (int)(Math.random() * 5) + 2;
   myAngle = (int)(Math.random() * 360);
  }
  public void move()
  {
    myX = myX + (int)(Math.cos(myAngle) * mySpeed);
    myY = myY + (int)(Math.sin(myAngle) * mySpeed);
  }
  public void show()
  {
   fill(myColor);  
   ellipse(myX, myY, 10, 10);
   fill(myColor);
   ellipse((myX - 2), (myY + 1), 3, 3);
   ellipse((myX + 1), (myY - 2), 3, 3);
  }
}
