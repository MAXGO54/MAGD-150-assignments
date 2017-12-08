PFont Chiller;
PFont ARBONNIE;
void setup() {
  surface.setResizable(true);
  surface.setTitle("Load Font");// The load font will make sure that the right fonts are loaded into the program while it is being run.
  pixelDensity(displayDensity());
  size(632, 432);
  background(55);
  noStroke();

 
  Chiller = loadFont("Chiller-Regular-48.vlw");
  ARBONNIE= loadFont("ARBONNIE-48.vlw");

textAlign(CENTER, CENTER);//This algns where the text is going to show up on the screen.

textFont(ARBONNIE);
textSize(60);

textFont(Chiller);
textSize(60);

}

void draw() {
  fill(32, 10);
  rect(0, 0, width, height);

 

  pushMatrix();
  translate(width / 2.0, height / 2.0);
  shearX(frameCount / 300.0);
  fill(#9B020C);
  text("Rise Of The Dead King", 0, 0); // The text portion creates that you would desire to display.
  text("By Max Gomon", 150, 150);
  popMatrix();

 
  
  pushMatrix();// The pushMatrix, ShearY/X and the popMatrix make the text rotate according to which axis the Shear is set on.
  translate(width /2.0, height / 2.0);
  shearY(frameCount / 300.0);
  fill(#500005);
  text("Rise Of The Dead King", 0, 0);
  text("By Max Gomon", 150, 150);
  popMatrix();
}