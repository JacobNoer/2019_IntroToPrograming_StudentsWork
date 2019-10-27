
class Object {

  // Variables
  float speed;
  float speedY;
  float ballX;
  float ballY;


  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  int petalColor;//hexadecimal number for the color of petals
  int ballColor; //hexadecimal number for the color of the circle

  
  //flower object
  Object(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, float temp_speed) {
    r=temp_r;
    n_petals = temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
    speed = temp_speed;
  }
  
  //Ball object
  Object(float temp_r, float temp_x, float temp_y, int temp_ballColor, float temp_speed, float temp_speedY){
  r=temp_r;
  x=temp_x;
  y=temp_y;
  speed=temp_speed;
  speedY=temp_speedY;
  ballColor=temp_ballColor;
}

  void displayFlower () {        //defines the flower
    fill(petalColor);
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    fill(200, 0, 0);
    ellipse(x, y, r*1.2, r*1.2);
  }
  
  void displayBall(){    //difines the ball
    fill(ballColor);
    ellipse(x,y,r,r);
  }
    
  void move() {
    x = x + speed; //sets the speed on the x-axis
    y=y+speedY;    //sets the speed on the y-axis
  }
  
  /*
  used i to for the different size of petales that the flowers had so it can
  detect when the ball is hitting the flower
  */
  float bounce(int i) {
    if (x > width-r/i || x < r/i) {
      speed = speed* (-1);
    }
    
    if (y > height-r/i || y < r/i){
      speedY=speedY*(-1);
    }
   return speed;
  }

//checks if the ball and the flower overlaps
  boolean overlaps(Object someOtherObject) {
    if (dist(x, y, someOtherObject.x, someOtherObject.y)<(r+someOtherObject.r))
    {
      return true;
    } 
    else
    {
      return false;
    }
  }
}
