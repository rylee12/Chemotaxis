Bacteria [] xian;
void setup()   
{     
 size(700, 700);
 xian = new Bacteria[400];
  for (int i = 0; i < xian.length; i++)
   {
     xian[i] = new Bacteria();
   }
}   
void draw()   
{
  background(20);
  for (int i = 0; i < xian.length; i++)
   {
     xian[i].move();
     xian[i].show();
   }
}  
class Bacteria    
{ 
  int myX, myY;
  boolean existence;
  Bacteria() //constructor
  {
    myX = 350;
    myY = 350;
    existence = true;
  }
  void move()
  {
    if (mousePressed && mouseX > myX)
      myX = myX + (int)(Math.random()*5)-3;
    else if (mousePressed && mouseX < myX)
      myX = myX + (int)(Math.random()*5)-1;
    else if (mouseX > myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    
    if (mousePressed && mouseY > myY)
      myY = myY + (int)(Math.random()*5)-3;
    else if (mousePressed && mouseY < myY)
      myY = myY + (int)(Math.random()*5)-1;
    else if (mouseY > myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
  }
  void show()
  {
    fill((int)(Math.random()*256)+1, (int)(Math.random()*256)+1, (int)(Math.random()*256)+1);
    if (existence == true)
      ellipse(myX, myY, 10, 10);
  }
}    