//import processing.serial.*;
//import cc.arduino.*;
//Arduino arduino;

float offset;
float speed;

void setup()
{
  //arduino = new Arduino(this, Arduino.list()[0], 57600);
  offset = 0;
  speed = PI/40;
  size(400, 400);
  background(0);
  pet(50, 200, 0);
}

void draw()
{
  background(0);
  pet(50, 200, offset);
  offset += speed;
  if (offset > 2 * PI)
    offset = 0;
    
   //speed = map(arduino.analogRead(5), 0, 200, PI/80, PI/10);
   speed = map(mouseX, 0, width, PI/80, PI/10);
}

void pet(float x, float y, float offset)
{
 float x1, y1, x2, y2;
 x1 = 0;
 y1 = sin(offset) * 20;
 stroke(100, 255, 100);
 strokeWeight(20);
 for (float i = PI/12; i < 7.7 * PI; i += PI/24)
 {
   x2 = i * 12;
   y2 = sin(i + offset) * 20;
   line(x1 + x, y1 + y, x2 + x, y2 + y);
   x1 = x2;
   y1 = y2;
 }
 stroke(0);
 strokeWeight(8);
 point(x1 + x, y1 + y);
}
