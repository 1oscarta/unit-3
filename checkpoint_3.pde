color darkp  = #230F2B;
color pink   = #F21D41;
color lightg = #EBEBBC;
color medg   = #BCE3C5;
color darkg  = #82B3AE;

float sliderY;
float shade;
void setup() {
  size (800,600);
  strokeWeight(5);
  stroke(pink);
  fill(pink);
  shade = 0;
  sliderY = 300;
}

void draw() {
  background(shade);
  
  line(400,50,400,550);
  circle(400,sliderY,50);
}

void mouseReleased() {
  controlSlider();
}

void mouseDragged() {
  controlSlider();
}

void controlSlider() {
   if (mouseY > 50 && mouseY < 550) {
    sliderY = mouseY;
  }
  
  shade = map(sliderY,50, 550, 255, 0);
}
