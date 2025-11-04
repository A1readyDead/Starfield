Particle[] sayo;
public void setup()
{
  size(500,500);
  sayo = new Particle[50];
  for(int r = 0; r < sayo.length - 1; r++){
   sayo[r] = new Particle(); 
  }
}
public void draw()
{
  background(0);
  for(int r = 0; r < sayo.length - 1; r++){
   sayo[r].move();
   sayo[r].show();
  }
}
{
    if (mouseButton == LEFT){
      for(int r = 0; r < sayo.length - 1; r++){
      sayo[r] = new Particle();
     }
   }
}




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
    if(myX < mouseX){
       myX = myX + (int)(Math.random() * 3) + 1;
    }
    if(myX > mouseX){
      myX = myX + (int)(Math.random() * 3) - 3;
    }
    if(myY < mouseY){
       myY = myY + (int)(Math.random() * 3) + 1;
    }
     if(myY > mouseY){
       myY = myY + (int)(Math.random() * 3) - 3;
     }
  }
  public void show()
  {
    fill(myColor);  
    ellipse(myX, myY, 25, 25);
  }
}




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
