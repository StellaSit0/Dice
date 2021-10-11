class Die //models one single dice cube
{
  //member variable declarations here
  //int die1, die2, die3, die4, die5, die6;
  int die1;
  int sizeOfDice, theX, theY;
  Die(int x, int y) { //constructor
    //variable initializations here
    sizeOfDice=50;
    theX=x;
    theY=y;
  }
  void roll() {
    if ((int)(Math.random()*6)+1 == 1) {
      die1=1;
    } else if ((int)(Math.random()*6)+1==2) {
      die1=2;
    } else if ((int)(Math.random()*6)+1==3) {
      die1=3;
    } else if ((int)(Math.random()*6)+1==4) {
      die1=4;
    } else if ((int)(Math.random()*6)+1==5) {
      die1=5;
    } else {
      die1=6;
    }
    //your code here
  }
  void show() {
    if (die1==1) {
      fill(255, 255, 255);
      square(theX, theY, 50);
      fill(0, 0, 0);
      ellipse(theX+25, theY+25, 10, 10);
    } else if (die1==2) {
      fill(255, 255, 255);
      square(theX, theY, 50);
      fill(0, 0, 0);
      ellipse(theX+10, theY+10, 10, 10);
      ellipse(theX+40, theY+40, 10, 10);
    } else if (die1==3) {
      fill(255, 255, 255);
      square(theX, theY, 50);
      fill(0, 0, 0);
      ellipse(theX+10, theY+10, 10, 10);
      ellipse(theX+25, theY+25, 10, 10);
      ellipse(theX+40, theY+40, 10, 10);
    } else if (die1==4) {
      fill(255, 255, 255);
      square(theX, theY, 50);
      fill(0, 0, 0);
      ellipse(theX+10, theY+10, 10, 10);
      ellipse(theX+40, theY+10, 10, 10);
      ellipse(theX+10, theY+40, 10, 10);
      ellipse(theX+40, theY+40, 10, 10);
    } else if (die1==5) {
      fill(255, 255, 255);
      square(theX, theY, 50);
      fill(0, 0, 0);
      ellipse(theX+10, theY+10, 10, 10);
      ellipse(theX+40, theY+10, 10, 10);
      ellipse(theX+10, theY+40, 10, 10);
      ellipse(theX+40, theY+40, 10, 10);
      ellipse(theX+25, theY+25, 10, 10);
    } else {
      fill(255, 255, 255);
      square(theX, theY, 50);
      fill(0, 0, 0);
      ellipse(theX+10, theY+10, 10, 10);
      ellipse(theX+40, theY+10, 10, 10);
      ellipse(theX+10, theY+40, 10, 10);
      ellipse(theX+40, theY+40, 10, 10);
      ellipse(theX+25, theY+40, 10, 10);
      ellipse(theX+25, theY+10, 10, 10);
    }
  }
}
Die num1;
void setup() {
  size(500, 500);
  //num1 = new Die(250, 250);
  noLoop();
  background(225);
}
void draw() {
  for (int i=0; i<8; i++) {
    for (int m=0; m<10; m++) {
      num1 = new Die(i*60+60, m*60+50);
      num1.roll();
      num1.show();
    }
  }
}
void mousePressed() {
  redraw();
}
