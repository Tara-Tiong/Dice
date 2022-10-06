 void setup() {
   size(500, 500);
   noLoop();
 }
void draw() {
  int sum = 0;
  background(0);
  for(int y = 15; y <= 400; y+=60){
    for(int x= 15; x <= 480; x+=60){
      Die bob = new Die(x,y);
      bob.show(); 
      sum += bob.dice;
    }
  }
  textSize(20);
  fill(255, 255, 255);
  text("Sum: " + sum, 210, 480);
}

void mousePressed() {
  redraw();
}

class Die { //models one single dice cube
  int myX, myY, dice; //member variable declarations
  Die(int x, int y) { //constructor
    myX = x; //variable initializations here
    myY = y;
    roll();
  }
  void roll() {
    dice = (int)((Math.random()*6)+1);
  }
  void show() {
    fill(255, 255, 255);
    square(myX, myY, 50);
    fill(0);
    if(dice == 1){
      ellipse(myX+25, myY+25, 6, 6); 
    }
    if(dice == 2){
      ellipse(myX+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+25+(25/2), 6, 6);
    }
    if(dice == 3){
      ellipse(myX+25, myY+25, 6, 6); 
      ellipse(myX+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+25+(25/2), 6, 6);
    }
    if(dice == 4){
      ellipse(myX+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+25+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+(25/2), myY+25+(25/2), 6, 6);
    }
    if(dice == 5){
      ellipse(myX+25, myY+25, 6, 6);
      ellipse(myX+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+25+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+(25/2), myY+25+(25/2), 6, 6);
    }
    if(dice == 6){
      ellipse(myX+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+25+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+(25/2), myY+25+(25/2), 6, 6);
      ellipse(myX+(25/2), myY+25, 6, 6);
      ellipse(myX+25+(25/2), myY+25, 6, 6);
    }
  }
}
