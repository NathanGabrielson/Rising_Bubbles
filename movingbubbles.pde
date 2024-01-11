Bubble[] bubbles;


void setup() {
  size(1000,1000);
  
  bubbles = new Bubble[100];
  
  for (int i = 0; i < bubbles.length; i ++) {
    bubbles[i] = new Bubble();
  }
}


void draw() {
  background(0);
  stroke(255);
  line(0, height * 0.25, width, height * 0.25);
  noStroke();
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].move();
    bubbles[i].show();
  }
}
