

//Author: Travis Stewart

ArrayList<Ball> Balls = new ArrayList<Ball>();
Ball ball1 = new Ball(300, 300, 10);
final int BALL_SIZE = 50;

void mousePressed() {
  Ball jody = new Ball(mouseX, mouseY, 10); 
  Balls.add(jody);
}

void setup() {

  size(displayWidth, displayHeight);
  Balls.add(ball1);
}



void draw() {
  background(0);

  //show framerate
  textSize(16);
  text("Frame rate: " + int(frameRate) + " Ball Count:" + int(Balls.size()), 10, 20);

  for (Ball b : Balls) {
    //draw each ball
    b.display(); 

    //Bounce each ball when necessary
    if (displayWidth - b.x <= BALL_SIZE/2) {
      b.bounce("left");
    }

    if (b.x <= BALL_SIZE/2) {
      b.bounce("right");
    }

    if (b.y <= BALL_SIZE/2) {
      b.bounce("down");
    }

    if (displayHeight - b.y <= BALL_SIZE/2) {
      b.bounce("up");
    }
  }
}
