PVector mouse;
//Making a vector for the mouse ensures that moving the mouse will alter or move the specified vector.
PVector position;
PVector velocity;
//The position and velocity vectors allow the objects to spawn in a certain positon, moving with the specified velocity.
Balloon [] balloon = new Balloon [20];
float x;
float y;
// The float "X" and "Y" prepares the rest of the code for the rectangle that spins. They will have a specified size.

void setup(){
 size (640, 360);
 smooth();
 position = new PVector(100,100);
 velocity = new PVector(2.25, 5);
 //The setup for the velocity and the position command the program what velocity and position the objecct should move at.
 for (int i = 0; i < balloon.length; i++)  {
   balloon[i] = new Balloon();
 }
 x = 50;
 y = 50;
 //The "x" and "Y" wil now have a size.
}



void draw(){
 background (#8493DE);
 fill(#524DE8);
 rect(0,0,width,height);
 // Making a rectangle this way wil create a boarder for the moving objects to bounce off of so they stay on the screen.
 
 position.add(velocity);
 
 if ((position.x > width) || (position.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((position.y > height) || (position.y < 0)) {
    velocity.y = velocity.y * -1;
  }
// The position and velocity are now set for the moving circles. 
  
  stroke(#187C16);
  fill(#0AC108);
  ellipse(position.x,position.y, 20, 20);
  scale(0.9);
  ellipse(position.x,position.y, 20, 20);
 
 
 PVector mouse = new PVector(mouseX, mouseY);
 PVector center = new PVector(width/2, height/2);
 mouse.sub(center);
 // The mouse movement is now coordinated with the objects to move based from the center of the screen. 

translate(width/2, height/2);
strokeWeight(2);
stroke(#502B13);
line(0,0,mouse.x,mouse.y);
//The code above creates the brown line for the mouse to move. It will be the stick that attracts the balloons.

for (int i = 0; i < balloon.length; i++) {
    balloon[i].update();
    balloon[i].display(); 
  }
 // The code above is meant to dispay or make the balloons apear. 
  
  translate(x,y);
  rotate(radians(frameCount));
  fill(#51ABE5);
  stroke(#42BFCB);
  rect(-10,-10,-20,-20);
  frameRate(80);
}
//The six lines of code above create the foating rectangle that rotates while it moves in random positions. 