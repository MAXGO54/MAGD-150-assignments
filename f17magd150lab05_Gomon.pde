int rectX, rectY;
int circleX, circleY;
int rectSize = 50;
int circleSize = 63;
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor; 
boolean rectOver = false;
boolean circleOver = false;
float  textSize, dilatedTextSize, contractedTextSize, fadeTime;

void setup(){
  size(800, 800);
  rectColor = color(#DE1627);
  rectHighlight = color(#CE4752);
  circleColor = color(#41199B);
  circleHighlight = color(#8668C6);
  baseColor = color(102);
  currentColor = baseColor;
  circleX = width/2+circleSize/7130;
  circleY = height/10;
  rectX = width/2-rectSize*3;
  rectY = height/2-rectSize*7;
  ellipseMode(CENTER);
  textAlign(100, 110);
  textAlign(100, 120);
  contractedTextSize = 33;
  dilatedTextSize = contractedTextSize;
}

void draw(){
 update(mouseX, mouseY);
 background(currentColor);

 textSize(textSize);
  text("on", rectX, rectY);
  
   textSize(textSize);
  text("off", circleX, circleY);
 
 if(rectOver) {
   fill(rectHighlight);
 } else {
   fill(rectColor);
 }
 stroke(0);
 rect(rectX, rectY, rectSize, rectSize);
 
 if(circleOver) {
   fill(circleHighlight);
 } else {
   fill(circleColor);
 }
 stroke(0);
 ellipse(circleX, circleY, circleSize, circleSize);
}

void update(int x, int y) {
if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}


void mousePressed() {
 if (circleOver) {
   currentColor = 102;
 }
 if (rectOver) {
   currentColor= 255;
 }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

//turn the tv on and off with the buttons 