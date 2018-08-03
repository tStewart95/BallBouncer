

class Cube { 

  int x, y, hp;

  Cube(int xIn, int yIn, int hpIn) {

    x = xIn;
    y = yIn;
    hp = hpIn;
  }

  void display() {
    fill(255);
    rect(x, y, 100, 100); 
    fill(0);
    text(hp, x, y);
  }

  void watchForHit() {
    for (Ball b : Balls) {
      if (abs(x - b.x) <= BALL_SIZE/2 && abs(y - b.y) <= BALL_SIZE/2) {
        b.bounce("left");
      }
    }
  }
}
