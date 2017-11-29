void setup(){
  background(10);
  size(500, 500);
}

void draw(){
  noFill();
  stroke(225);
bezier(85, 20, 10, 10, 90, 90, 15, 80);
  noFill();
  stroke(225);
bezier(100, 60, 10, 10, 90, 90, 15, 80);
  noFill();
  stroke(255);
bezier(130, 60, 20, 20, 90, 110, 15, 80);
  fill(127, 0, 0);
  noStroke();
ellipse(300, 350, 50, 50);
  fill(225, 0, 0);
  noStroke();
ellipse(310, 360, 10, 10);
fill(225, 50, 30);
noStroke();
ellipse(235, 250, 20, 20);
fill(225, 30, 20);
noStroke();
ellipse(145, 120, 50, 50);
fill(100, 60, 40);
noStroke();
ellipse(170, 175, 8, 8);
fill(230, 120, 150);
noStroke();
ellipse(190, 210, 15, 15);
noFill();
stroke(255);
arc(400, 400, 90, 150, 0, HALF_PI);
point(405, 405);
point(410, 410);
point(330, 340);
point(410, 425);
point(230, 290);
point(210, 230);
point(210, 430);
point(325, 390);
point(435, 230);
point(387, 476);
point(130, 210);
point(150, 230);
point(160, 273);
point(210, 156);
point(110, 110);
point(60, 75);
point(75, 89);
point(34, 54);
point(43, 70);
point(135, 230);
point(210, 190);
point(134, 210);
point(145, 190);
point(80, 90);
point(85, 95);
point(90, 120);
point(90, 230);
point(400, 400);
point(365, 400);
point(143, 400);
point(236, 349);
point(346, 467);
point(321, 475);
point(265, 547);
}