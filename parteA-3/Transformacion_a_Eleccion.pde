PImage img;

void setup() {
  size(600, 393);
  img = loadImage("imagen.jpg");

  tint(190, 150, 205);
  
  translate(width, 0);
  scale(-1, 1);

  image(img, 0, 0);
}
