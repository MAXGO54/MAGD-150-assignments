int centerX, centerY, offset1, offset2;// This prepares the positions of where the snowballs generate by offsets.    
float SnowBallSpeed = 3;// The float speed willl ensure that there is a specific speed at which the snowballs are generating.
float Snowball;
boolean SnowBall;

void setup(){
  background(#626EE3);
  size(800, 700);
  smooth();
  
}



void draw(){ 
 updateSnowBall();
 drawSnowBall();
}



void updateSnowBall(){ 
  centerX = round(random(0, width));
  centerY = round(random(0, width)); 
}   // These two segments of code tell the program to generate the snowbals at a point in the sketch.



void drawSnowBall(){
  ellipse(centerX, centerY, 100, 100);
  fill(255);
} //The draw snowball creates the apearance of the snowballs for how they will look when the sketch is  opened.



void mousePressed(){
  SnowBallSpeed = 3;
  if(mousePressed){
    if(mouseButton==RIGHT){ // The mouse pressed is added to control the speed of the snowballs being gererated by the click of a mouse.
      SnowBallSpeed = 80;} // By right clicking the mouse, the speed rate of the snowballs shoud be set to 80.
}
else if (mouseButton==LEFT){
  SnowBallSpeed = 3;} // This else function is set so when the left mouse button is clickedd, the snowball speed rate should be set to 3.
}

void mouseReleasedd(){
 SnowBallSpeed = 3; // This function sets the snowball speed rate to 3 every time the mouse buttons are released.
}