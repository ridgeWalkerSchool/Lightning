int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(0,0,0);
}
void draw()
{
  int r = (int)(Math.random()*254);
  int g = (int)(Math.random()*254);
  int b = (int)(Math.random()*254);
  stroke(r,g,b);
  while(endX <= 300) {
    endX = startX + (int)((Math.random()*12));
    endY = startY + (int)(Math.random() * 12) + 12;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
};

void mousePressed() {
  background(0);
  startX = 85;
  startY = 0;
  endX = 0;
  endY = 300;
};
