int totalImages = 5; // Number of images to generate

void setup() {
  size(800, 400);
  colorMode(HSB, 360, 100, 100);
  noLoop();
}

void draw() {
  for (int i = 0; i < totalImages; i++) {
    background(255);
    drawSplashedColors();
    saveFrame("output/splashed_colors_" + nf(i + 1, 2) + ".png");
    println("Image " + (i + 1) + " saved.");
  }
  exit();
}

void drawSplashedColors() {
  int numSplashes = 500; // Number of color splashes

  for (int i = 0; i < numSplashes; i++) {
    float x = random(width);
    float y = random(height);
    float size = random(20, 200); // Adjust range of splash sizes as desired
    float hue = random(360);
    float saturation = random(50, 100);
    float brightness = random(50, 100);
    float alpha = random(50, 100); // Adjust range of alpha transparency as desired

    fill(hue, saturation, brightness, alpha);
    noStroke();
    float angle = random(TWO_PI);
    float spread = random(10, 50);
    float dx = cos(angle) * spread;
    float dy = sin(angle) * spread;
    ellipse(x + dx, y + dy, size, size);
  }
}
