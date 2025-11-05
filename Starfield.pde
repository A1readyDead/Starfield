Particle[] sayo;
public void setup()
{
  size(500,500);
  sayo = new Particle[300];
  for(int r = 0; r < 10; r++){
   sayo[r] = new OddballParticle(); 
  }
  for(int r = 10; r < sayo.length - 1; r++){
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

    void mousePressed(){
  for(int r = 0; r < 10; r++){
   sayo[r] = new OddballParticle(); 
  }
  for(int r = 10; r < sayo.length - 1; r++){
   sayo[r] = new Particle(); 
     }
   }
