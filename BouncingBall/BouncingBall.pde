

//Author: Travis Stewart

ArrayList<Ball> Balls = new ArrayList<Ball>();
ArrayList<Cube> Cubes = new ArrayList<Cube>();
Ball ball1 = new Ball(300, 300, 10);
final int BALL_SIZE = 50;
Cube cube1 = new Cube(600, 600, 10);


void mousePressed() {
  Ball jody = new Ball(mouseX, mouseY, 10); 
  Balls.add(jody);
}

void setup() {

  size(displayWidth, displayHeight);
  Balls.add(ball1);
  Cubes.add(cube1);
}



void draw() {
  background(0);

  //show framerate
  textSize(16);
  text("Frame rate: " + int(frameRate) + " Ball Count:" + int(Balls.size()), 10, 20);
  showBalls();
  doTheCube();
}
