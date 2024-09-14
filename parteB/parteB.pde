PImage img; 
color currentColor; 

void setup() {
  size(600, 600);
  img = loadImage("img.jpg");
  currentColor = color(255, 255, 255);
}

void draw() {
  image(img, 0, 0); 
  fill(currentColor);
  noStroke();
  ellipse(mouseX, mouseY, 20, 20); 
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    if (mouseX >= 0 && mouseX < img.width && mouseY >= 0 && mouseY < img.height) {
      currentColor = img.get(mouseX, mouseY); 
    }
  }
}

void mouseDragged() {
  if (mouseButton == LEFT) {
    if (mouseX >= 0 && mouseX < img.width && mouseY >= 0 && mouseY < img.height) {
      img.loadPixels(); 
      for (int x = -5; x <= 5; x++) {  
        for (int y = -5; y <= 5; y++) {
          int pixelX = mouseX + x;
          int pixelY = mouseY + y;
          if (pixelX >= 0 && pixelX < img.width && pixelY >= 0 && pixelY < img.height) {
            int index = pixelX + pixelY * img.width;
            img.pixels[index] = currentColor; 
          }
        }
      }
      img.updatePixels(); 
    }
  }
}
