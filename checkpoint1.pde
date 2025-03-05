//pallette of colors
color cream = #FCFBE3;
color lightBrown   = #DDCAAA;
color mediumBrown  = #BC8542;
color darkBrown    = #9F642C;
color darkestBrown = #6E3722;
color white        = #FFFFFF;

color selectedColor;

void setup() {
  size (800,600);
  strokeWeight(5);
  stroke(darkestBrown);
  selectedColor = darkBrown;
}

void draw() {
  background(cream);
  
  if (dist(150,500,mouseX,mouseY)<50) {
  stroke(white);
  } else{
  stroke(darkestBrown);
  }
  //buttons
  tacile(150,500,50);
  fill(lightBrown);
  circle(150,500,100);
  
  tacile(400,500,50);
  fill(mediumBrown);
  circle(400,500,100);
 
  tacile(650,500,50);
  fill(darkBrown);
  circle(650,500,100);
  
  stroke(darkestBrown);
  fill(selectedColor);
  square(200,25,400);
}

void tacile (int x, int y, int r) {
  if (dist(x,y,mouseX,mouseY)< r ) {
  stroke(white);
  } else{
  stroke(darkestBrown);
  }
}
void mouseReleased() {
  if (dist(150,500,mouseX,mouseY)<50) {
   selectedColor = lightBrown;
  }
  if (dist(400,500,mouseX,mouseY)<50) {
   selectedColor = mediumBrown;
  }
   if (dist(650,500,mouseX,mouseY)<50) {
   selectedColor = darkBrown;
  }
  
}
