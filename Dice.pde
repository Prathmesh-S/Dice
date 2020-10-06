int total =  0;

void setup()
{
  size(450,500);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw()
{
  background(0,0,0);
  for(int i=0; i<=400; i=i+50) {
    for(int k=0; k<=400; k=k+50) {
      Die First = new Die(i,k);
      First.roll();
      First.show(); 
    }
  }
  fill(255);
  text("The total number of dots concludes to be = " ,140,470);
  text(total,260,470);
 //your code here
}
void mousePressed()
{
  redraw();
  total = 0;
}
class Die //models one single dice cube
{
  int dieX, dieY, dieNumber;
  
  Die(int x, int y) //constructor
  {
    dieX = x;
    dieY = y;
    dieNumber=0;
  }
  void roll()
  {
   dieNumber=(int)((Math.random()*6)+1);
   
  }
  void show()
  {
    fill(25);
    square(dieX,dieY,50);
    if (dieNumber == 1) {
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    circle(dieX+25,dieY+25,5);
    total=total+1;
     }
     else if (dieNumber == 2){
       fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
       circle(dieX+15,dieY+25,5);
       circle(dieX+35,dieY+25,5);
        total=total+2;
     }
     else if (dieNumber == 3){
       fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
       circle(dieX+10,dieY+25,5);
       circle(dieX+25,dieY+25,5);
       circle(dieX+40,dieY+25,5);
        total=total+3;
     }
     else if (dieNumber == 4){
        fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
       circle(dieX+15,dieY+20,5);
       circle(dieX+35,dieY+20,5);
       circle(dieX+15,dieY+30,5);
       circle(dieX+35,dieY+30,5);
        total=total+4;
     }
     else if (dieNumber == 5){
       fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
       circle(dieX+10,dieY+10,5);
       circle(dieX+10,dieY+40,5);
       circle(dieX+25,dieY+25,5);
       circle(dieX+40,dieY+10,5);
       circle(dieX+40,dieY+40,5);
        total=total+5;
     }
     else {
       fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
       circle(dieX+10,dieY+10,5);
       circle(dieX+10,dieY+40,5);
       circle(dieX+25,dieY+10,5);
       circle(dieX+25,dieY+40,5);
       circle(dieX+40,dieY+10,5);
       circle(dieX+40,dieY+40,5);
        total=total+6;
     }
  }
}
