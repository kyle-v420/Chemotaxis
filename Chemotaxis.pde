Mover[] a;
int myX = 350;
int myY = 150;
int x = 350;
int y = 150;
 
void setup(){
  size (700,700);
  background(1);
  int i = 0;
  a = new Mover[750];
  while(i < 750){
    a[i] = new Mover();
    i++;
  }
}
void keyPressed()
{
  if(key == CODED)
  {
    if (keyCode == LEFT){
      x = x - 20;
    }
    if(keyCode == RIGHT){
      x = x + 20;
    }
    if (keyCode == UP){
      y = y - 20;
    }
    if(keyCode == DOWN){
      y = y + 20;
    }
  }
}
void draw(){
  background(1);
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  for(int i = 0; i < a.length ; i++){
    a[i].walk();
    a[i].show();
  }
}

class Mover
{
  int myX,myY,e;
  Mover(){
    myX = 350;
    myY = 150;
    e = 0;
    e = y;
  }
  void walk(){
  myX = myX + (int)(Math.random()*5)-2;
  myY = myY + (int)(Math.random()*5)-2;
  if(myY <= y-50){
    myY = y + (int)(Math.random()*51);
    }
  if(myX <= x-50){
    myX = x + (int)(Math.random()*51);
  }
  else if(myY >= y+50){
    myY = y - (int)(Math.random()*51);
    }
  else if(myX >= x+50){
    myX =  x - (int)(Math.random()*51);
  }
  }
  void show(){
  ellipse(myX,myY,35,35);
  }
  
}
