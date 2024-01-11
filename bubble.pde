class Bubble {
  float x;
  float y;
  int r, g, b;
  float size;
  float inc;

  Bubble() {
    create();
  }

  void create() {
    x = (float)(Math.random() * width);
    y = height;
    size = (float)(Math.random() * 50);
    r = (int)(Math.random() * 255);
    g = (int)(Math.random() * 255);
    b = (int)(Math.random() * 255);
    inc = size/10;
    show();
  }

  void show() {
    fill(r, g, b);
    ellipse(x, y, size, size);
  }

  void move() {
    if (r > 225 || y >= width * 0.25 + size/2) {
       y -= inc;
       x += (Math.random() - 0.5) * 5;
    }
    if (y <= 0) {
      create();
    }
  }
}
