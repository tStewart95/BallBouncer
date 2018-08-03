//Ball class

class Ball {

  int x, y, xSpeed, ySpeed;
  //initialize ball object with x and y coordinates and speeds

  Ball(int xIn, int yIn, int speedIn ) {
    //set constructor arguments
    x = xIn;
    y = yIn;
    xSpeed = 5;        //zero for now
    ySpeed = speedIn;
  }



  void display() {

    //Draw a red 50x50 circle at the location of the Ball Object
    fill(255, 0, 0);
    ellipse(x, y, BALL_SIZE, BALL_SIZE); 

    //move the circle at a specific x and y speed
    x += xSpeed;
    y += ySpeed;
  }

  //'bounce' the ball by reversing the sign of the xSpeed and ySpeed variables
  void bounce(String dir) {

    //bounce left or right
    if (dir == "left" || dir == "right") {
      xSpeed = xSpeed * -1;
    }

    //bounce up or down
    if (dir == "up" || dir == "down") {
      ySpeed = ySpeed * -1;
    }
  }
}
