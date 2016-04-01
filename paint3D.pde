/**
*  Paint 3D - Processing Language (First Program!)
*  Author: Luiz Cruz
*  Last Update: 01/04/2016
**/
  
  
int sizeX = 30;
int sizeY = 30;
boolean pointed = true;
  
  
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
    if(key == CODED){
      if (keyCode == UP){
        pointed = false;
        sizeX = sizeX+10;
        sizeY = sizeY+10;
        pointed = true;
      }
      if(keyCode == DOWN)
      {
        pointed = false;
        sizeX = sizeX-1;
        sizeY = sizeY-1;
        pointed = true;
      }
    }
  }
 
  if (pointed)
  {
   stroke(255);
    ellipse(mouseX, mouseY, sizeX, sizeY);
  }

}
