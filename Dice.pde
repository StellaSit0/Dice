class Die //models one single dice cube
{
  //member variable declarations here
  int die1, die2, die3, die4, die5, die6;
  int sizeOfDice, theX, theY;
  Die(int x, int y) { //constructor
    //variable initializations here
    sizeOfDice=50;
    theX=x;
    theY=y;
  }
  void roll() {
    if ((int)(Math.random()*7)+1 == 1) {
      
    } else if ((int)(Math.random()*7)+1==2) {
      
    } else if ((int)(Math.random()*7)+1==3) {
      
    } else if ((int)(Math.random()*7)+1==4) {
      
    } else if ((int)(Math.random()*7)+1==5) {
      
    } else {
      
    }
    //your code here
  }
  void show() {
    if()
    fill(255, 255, 255);
    square(theX, theY, 50);
    fill(0, 0, 0);
    ellipse(75, 75, 10, 10);
  }
}
Die num1;
void setup() {
  size(500, 500);
  num1 = new Die(250, 250);
  noLoop();
}
void draw() {
  background(225);
  num1 = new Die(250, 250);
  num1.show();
  num1.roll();
  //your code here
}
void mousePressed() {
  redraw();
}
