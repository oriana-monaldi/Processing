PImage img;

void setup() {
  size(640, 393);

  img = loadImage("imagen.jpg");
  tint(230, 250, 10);
  image(img, 0, 0, img.width, img.height);
}
