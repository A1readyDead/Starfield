class OddballParticle extends Particle//inherits from Particle
{
  private int myColor;
  private int myX, myY;
  OddballParticle(){
   myX = (int)(Math.random() * 498) + 1;
   myY = (int)(Math.random() * 498) + 1;
   myColor = (123);
  }
  public void move(){
     myX = myX + (int)(Math.random() * 11) - 5;
     myY = myY + (int)(Math.random() * 11) - 5;
  }
  public void show()
  {
    fill(myColor);  
    ellipse(myX, myY, 25, 25);
  }
}
