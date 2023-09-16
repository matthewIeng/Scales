void setup() {
  size(500, 500);
  background(0); 
  noStroke();
  drawFishScales();
}

void draw() {
  drawFishScales();
}

void drawFishScales() {
for (int i = 0; i < 30; i++) {
    for (int j = 0; j < 30; j++) {
      float x = i * (500/30);
      float y = j * (500/30);
      
      // Generate a random shade of blue
      float randomBlue = random(50, 255);
      fill(0, 0, randomBlue);
      
      // Draw a custom fish scale shape
      beginShape();
      vertex(x, y + (500/30) / 2);
      bezierVertex(x + (500/30) / 2, y - (500/30) / 2, x + (500/30) / 2, y + (500/30) * 1.5, x, y + (500/30));
      endShape(CLOSE);
    }
  }
}
