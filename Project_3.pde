PImage img;

void setup() {
  size(807, 607, P2D);  
  img = loadImage("poster.png");
}

void draw() {
  image(img,0, 0);
  loadPixels();
  img.loadPixels();
  for ( int x = 0; x<width; x++) {
    for ( int y = 0; y<height; y++) {
      int loc = x+y*width;
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      float d = dist(mouseX, mouseY,x, y);
      float factor = map(d, 10, 200, 2, 20);
      pixels[loc] = color(r*factor, g*factor, b*factor, d*factor);
    }
  }
  updatePixels();
}
      
      
    //<>// //<>// //<>// //<>// //<>//
