int startX, startY, endX, endY;


void setup() {
  size(400, 400); // Set the canvas size
  strokeWeight(2); // Set the stroke weight
  background(0); // Set the background color to black
  startX = 200;
  startY = 60;
  endX = 200;
  endY = 60;
  stroke(255,255,255);
  fill(0,0,0);
  ellipse(200,200,300,300);
  
}

void draw() {
  stroke((int)(Math.random() * 255), (int)(Math.random() * 255), 255); // Random blue-ish color
 
  for (int i =0; i <1; i++) { // Continue drawing until the lightning bolt goes off the screen
    endX = startX + (int)(Math.random() * 11) - 5; // Randomly change endX
    endY = startY + (int)(Math.random() * 5); // Randomly change endY within the range [-9, 9]
   
    line(startX, startY, endX, endY); // Draw a line segment
    startX = endX; // Update startX for the next segment
    startY = endY; // Update startY for the next segment
    fill(255,255,255);
    quad(110,400 , 170, 350, 245, 350, 300, 400);
  
  }
}

void mousePressed() {
  // Reset to the original values
  startX = 200;
  startY = 60;
  endX = 200;
  endY = 60;
  //background(0); // Clear the canvas
}
