color white   = #FFFFFF;
color black   = #000000;
color lred    = #FF0000;
color red     = #C30000;
color bred    = #7D0000;
color lyellow = #FFFF00;
color yellow  = #EBEB4B;
color byellow = #817F00;
color lblue   = #0000FF;
color blue    = #0000B7;
color bblue   = #00007A;
color lgreen  = #00BF00;
color green   = #00FF00;
color bgreen  = #007D00;

color selectedColor;

float shade;
PImage mrp;
boolean mrP;

float sliderX;

void setup() {
  size(1000, 700);
  background(255);

  fill(0);
  shade = 2;
  sliderX = 50;
  mrp = loadImage("mr.p.png");
  mrP = false;
}

void draw() {

  strokeWeight(5);

  if (dist(50, 25, mouseX, mouseY)<100) {
    stroke(white);
  } else {
    stroke(black);
  }

  fill(0);
  rect(0, 0, 200, 600);
  fill(255);
  rect(0, 600, 200, 200);
  
  line(50, 650, 150, 650);
  fill(white);
  circle(sliderX, 650, 25);

  tacile(50, 25);
  fill(lred);
  rect(50, 25, 100, 25);
  tacile(50, 62);
  fill(red);
  rect(50, 62, 100, 25);
  tacile(50, 100);
  fill(bred);
  rect(50, 100, 100, 25);
  tacile(50, 137);
  fill(lyellow);
  rect(50, 137, 100, 25);
  tacile(50, 175);
  fill(yellow);
  rect(50, 175, 100, 25);
  tacile(50, 212);
  fill(byellow);
  rect(50, 212, 100, 25);
  tacile(50, 250);
  fill(lblue);
  rect(50, 250, 100, 25);
  tacile(50, 287);
  fill(blue);
  rect(50, 287, 100, 25);
  tacile(50, 325);
  fill(bblue);
  rect(50, 325, 100, 25);
  tacile(50, 362);
  fill(lgreen);
  rect(50, 362, 100, 25);
  tacile(50, 400);
  fill(green);
  rect(50, 400, 100, 25);
  tacile(50, 437);
  fill(bgreen);
  rect(50, 437, 100, 25);
  tacile(50, 475);
  fill(black);
  rect(50, 475, 100, 25);
  stroke(white);
  fill(white);
  ellipse(50, 525, 25, 25);
  fill(selectedColor);
  ellipse(125, 550, 50, 50);
  fill(black);
  ellipse(125, 550, 25, 25);



  
  //tac
  strokeWeight(1);
  image(mrp, 205, 0);
  strokeWeight(1);
  stroke(255);
  fill(black);
  rect(205, 133, 100, 50);
  fill(white);
  text("save", 245, 165);
  fill(black);
  rect(205, 190, 100, 50);
  fill(white);
  text("load",245,215);
}


void tacile(int x, int y) {
  if (mouseX < x + 100 && mouseX > x && mouseY < y + 25 && mouseY > y) {
    stroke(white);
  } else {
    stroke(black);
  }
}

void mouseReleased() {
  if (mouseX < 150 && mouseX > 50 && mouseY < 50 && mouseY > 25) {
    selectedColor = lred;
  }
  if (mouseX < 150 && mouseX > 50 && mouseY < 87 && mouseY > 62) {
    selectedColor = red;
  }
  if  (mouseX < 150 && mouseX > 50 && mouseY < 125 && mouseY > 100) {
    selectedColor = bred;
  }
  if (mouseX < 150 && mouseX > 50 && mouseY < 162 && mouseY > 137) {
    selectedColor = lyellow;
  }
  if (mouseX < 150 && mouseX > 50 && mouseY < 200 && mouseY > 175) {
    selectedColor = yellow;
  }
  if (mouseX < 150 && mouseX > 50 && mouseY < 237 && mouseY > 212) {
    selectedColor = byellow;
  }
  if (mouseX < 150 && mouseX > 50 && mouseY < 275 && mouseY > 250) {
    selectedColor = lblue;
  }
  if (mouseX < 150 && mouseX > 50 && mouseY < 302 && mouseY > 287) {
    selectedColor = blue;
  }
  if (mouseX < 150 && mouseX > 50 && mouseY < 350 && mouseY >325 ) {
    selectedColor = bblue;
  }
  if (mouseX < 150 && mouseX > 50 && mouseY < 387 && mouseY > 362) {
    selectedColor = lgreen;
  }
  if (mouseX < 150 && mouseX > 50 && mouseY < 425 && mouseY > 400) {
    selectedColor = green;
  }
  if (mouseX < 150 && mouseX > 50 && mouseY < 462 && mouseY > 437) {
    selectedColor = bgreen;
  }
  if (mouseX < 150 && mouseX > 50 && mouseY < 500 && mouseY > 475) {
    selectedColor = black;
  }
  //if (mouseX < 150 && mouseX > 50 && mouseY < 237 && mouseY > 212) {
  if (dist(50, 525, mouseX, mouseY)<12.5) {
    fill(white);
    rect(200, 0, 1000, 700);
  }
  if (mouseX >205 && mouseX < 405 && mouseY > 0 && mouseY < 133) {
    mrP = !mrP;
  }
  controlSlider();
  if (mouseX > 205 && mouseX < 305 && mouseY > 133 && mouseY< 183) {
    selectOutput("Choose a name for your new image file", "saveImage");
  }
  controlSlider();
  if (mouseX > 205 && mouseX < 305 && mouseY > 190 && mouseY < 240) {
    selectInput("pick an image to load", "openImage");
  }
}



void saveImage (File f) {
  if (f != null) {
    PImage canvas = get (200, 0, 600, 600);
    canvas.save(f.getAbsolutePath());
  }
}
  
void openImage(File f) {
  if (f !=null) {
    int n =0;
    while (n <10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 200, 0); 
      n = n +1;
    }
  }
}

void mouseDragged() {
  if (mrP == false) {
    stroke(selectedColor);
    strokeWeight(shade);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    image(mrp, mouseX, mouseY, 100, 66);
  }
  controlSlider();
}

void controlSlider() {
  if (mouseX > 50 && mouseX < 150 && mouseY < 675 && mouseY >625) {
    sliderX = mouseX;
  }

  shade = map(sliderX, 50, 150, 0, 20);
}
