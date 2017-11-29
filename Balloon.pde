class Balloon {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  //The vectors above create the position, velocity and accelleration for the moving balloons.
  
  float topSpeed;
  //Creates a top speed for the balloons to move at. 
  Balloon() {
   position = new PVector(random(width),random(height));
   velocity = new PVector(0,0);
   topSpeed = 8;
  }
 //The four lines of code above create the balloon.
 
void update() {
  PVector mouse = new PVector(mouseX,mouseY);
  acceleration = PVector.sub(mouse,position);
  acceleration.normalize();
  acceleration.mult(0.4);
  velocity.add(acceleration);
  velocity.limit(topSpeed);
  position.add(velocity);
}
// The void update commands set the acceleration, position and velocity. The balloon will follow all of the set commands. 
void display()  {
  stroke(#FF3939);
  strokeWeight(2);
  fill(#E31920);
  ellipse(position.x,position.y,48,48);
  //The void display lines create the apearancce of the balloons.
}
}