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

  tacile(100,450);
  fill(lightBrown);
  rect(100,450,150,100);
  
  tacile(350,450);
  fill(mediumBrown);
  rect(350,450,150,100);
 
  tacile(600,450);
  fill(darkBrown);
  rect(600,450,150,100);
  
  stroke(darkestBrown);
  fill(selectedColor);
  circle(400,225,400);
}

void tacile(int x, int y) {
  if (mouseX < x + 150 && mouseX > x && mouseY < 550 && mouseY > 450) {
  stroke(white);
  } else{
  stroke(darkestBrown);
  }
}
void mouseReleased() {
  if (mouseX < 250 && mouseX > 100 && mouseY < 550 && mouseY > 450) {
   selectedColor = lightBrown;
  }
  if (mouseX < 550 && mouseX > 400 && mouseY < 550 && mouseY > 450) {
   selectedColor = mediumBrown;
  }
   if (mouseX < 750 && mouseX > 600 && mouseY < 550 && mouseY > 450) {
   selectedColor = darkBrown;
  }
  
}
