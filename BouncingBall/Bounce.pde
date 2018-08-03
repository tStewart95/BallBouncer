
void showBalls() {

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
