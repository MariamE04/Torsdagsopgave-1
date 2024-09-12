color red = color(255, 0, 0);
color yellow = color(249, 250, 13);
color green = color(19, 170, 85);
color grey = color(175);

color top = red;
color midt = grey;
color ned = grey;
int counter;

void setup() {
size(400, 400);
  background(255);
  fill(0);
  rectMode(CENTER); 
  rect(width/2, height/2, 100, 180);
}

void draw() {
  fill(top);
  ellipse(200, 150, 45, 45);
  fill(midt);
  ellipse(200, 200, 45, 45);
  fill(ned);
  ellipse(200, 250, 45, 45);
  
  counter = frameCount%120;
  
  if (counter < 50) {
    top = red;
    midt = grey;
    ned = grey;
  }
  else if (counter < 60) {
    top = red;
    midt = yellow;
    ned = grey;
  }
  else if (counter < 110) {
    top = grey;
    midt = grey;
    ned = green;
  }
  else {
    top = grey;
    midt = yellow;
    ned = grey;
  }
}
