PImage img;

void setup() {
  size(640, 393);
  img = loadImage("imagen.jpg");
  
  translate(0, height); 
  scale(1, -1);
  
  image(img, 0, 0);
}
