
class SnowBall{
  int centerX, centerY, offset1 ,offset2;
}

void move(){
 centerX = round(random(-5,5)) + centerX;
 centerY = round(random(-5,5)) + centerY;
}

SnowBall myInstanceVar;