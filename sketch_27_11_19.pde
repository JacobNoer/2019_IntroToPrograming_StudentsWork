//Inspiration taken from Francis-KL https://github.com/Francis-KI/2019_IntroToPrograming_StudentsWork/blob/master/two_objects_overlapsing_color_change_franciska.pde

Object myFlower1;  // the first instance of the Object class. Global objects. 
Object myFlower2;  // the second instance of the Object class
Object myBall; // the third instance of the Object Class.

  
void setup() {
  size(1600, 900);

  int _r1= 160; //radius of flower one's ellipses
  int _r2 = 100; //^^ flower 2
  int _r3 = 120; //radius of Circle1
   float _x=width/2; //starting point for x-value
 float _y=height/2; //starting point for y-value
  int _petals=7; //number of petals
  int _pc=#FFA000; //petals color in hexadecimal
  int _circleColor= #00FC27; // 
  int offset = 350; //en konstant der bruges til at give afstand mellem blomsterne.
  float _speed1=2;
  float _speed2=5;
  float _speed3=6;


  myFlower1 = new Object(_r1, _petals, _x, _y, _pc, _speed1); 
  myFlower2 = new Object(_r2, _petals, _x+random(-500, 500), _y+offset, _pc, _speed2);
  myBall = new Object(_r3, _x, _y-offset, _circleColor, _speed3,_speed3);
}

void draw() {
  background(#43AF76);
   if (myFlower1.overlaps(myBall)){
  background (#F8FC00);
   }
   if (myFlower2.overlaps(myBall)){
     background (#080DFF);
   }
  

myBall.displayBall();
myBall.move();
myBall.bounce(2);
myFlower1.displayFlower();
myFlower1.move();  
myFlower1.bounce(1);
myFlower2.displayFlower();
myFlower2.move();  
myFlower2.bounce(1);

}
