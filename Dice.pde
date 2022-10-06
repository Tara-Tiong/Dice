 void setup() {
   size(500, 500);
   noLoop();
 }
void draw() {
  int sum = 0;
  background(142, 104, 74);
  boolean shift = true;
  for(int y = 15; y <= 400; y+=60){
    for(int x= 15; x <= 480; x+=60){
      if (shift == true){
      Die bob = new Die(x,y);
      bob.show(); 
      sum += bob.dice;
      }
      else{
      Die bob = new Die(x, y+20);
      bob.show();
      sum += bob.dice;
      }
      if (shift == true)
      shift = false;
      else{
      shift = true;
      }
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
    rect(myX, myY, 50, 50, 10);
    fill(0);
    noStroke();
    if(dice == 1){
      fill(222, 110, 110);
      ellipse(myX+25, myY+25, 6, 6); 
    }
    if(dice == 2){
      fill(197, 110, 222);
      ellipse(myX+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+25+(25/2), 6, 6);
    }
    if(dice == 3){
      fill(110, 140, 222);
      ellipse(myX+25, myY+25, 6, 6); 
      ellipse(myX+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+25+(25/2), 6, 6);
    }
    if(dice == 4){
      fill(110, 222, 161);
      ellipse(myX+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+25+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+(25/2), myY+25+(25/2), 6, 6);
    }
    if(dice == 5){
      fill(206, 222, 110);
      ellipse(myX+25, myY+25, 6, 6);
      ellipse(myX+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+25+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+(25/2), myY+25+(25/2), 6, 6);
    }
    if(dice == 6){
      fill(222, 158, 110);
      ellipse(myX+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+25+(25/2), 6, 6);
      ellipse(myX+25+(25/2), myY+(25/2), 6, 6);
      ellipse(myX+(25/2), myY+25+(25/2), 6, 6);
      ellipse(myX+(25/2), myY+25, 6, 6);
      ellipse(myX+25+(25/2), myY+25, 6, 6);
    }
  }
}
