// Wolfram Cellular Automata
// Daniel Shiffman <http://www.shiffman.net>

// Simple demonstration of a Wolfram 1-dimensional cellular automata
// When the system reaches bottom of the window, it restarts with a new ruleset
// Mouse click restarts as well


CA ca;   // An instance object to describe the Wolfram basic Cellular Automata

int scl = 20;

void setup() {
  size(1800,600);
  background(255);
  int[] ruleset = {0,1,1,1,1,0,1,1};    // 222
  //int[] ruleset = {1,0,1,1,1,0,1,0};  // 190
  //int[] ruleset = {0,0,0,1,1,1,1,0};    // 30
  //int[] ruleset = {0,1,1,1,0,1,1,0};             // Rule 110  

  //int[] ruleset = {0,1,0,1,1,0,1,0};  // 90
  ca = new CA(ruleset);                 // Initialize CA
}

void draw() {
  ca.render();    // Draw the CA
  ca.generate();  // Generate the next level
  
  if (ca.finished()) {   // If we're done, clear the screen, pick a new ruleset and restart
    saveFrame("rule222.png");
    noLoop();
  }
}

void mousePressed() {
  background(255);
  ca.randomize();
  ca.restart();
}
