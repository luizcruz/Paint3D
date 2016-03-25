

void setup() {
  size(1024, 768);
  background(255);
  
}

void draw() {
  if (mousePressed && (mouseButton == LEFT)) {
    int r = (int) random(255);
    int g = (int) random(255);
    int b = (int) random(255);
    color brush = color(r,g,b); 
    fill(brush); 
  } else if (mousePressed && (mouseButton == RIGHT)) {
    color brush = color(255);
    stroke(brush);
    fill(brush);
  }
  
  if (keyPressed) {
    if (key == 'c' || key == 'C') {
       size(1024, 768);
       background(255);
    }
  }

  ellipse(mouseX, mouseY, 40, 40);

}