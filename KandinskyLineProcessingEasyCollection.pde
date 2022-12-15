// Intialise the Application
void setup()
{
  // Set the Size for the Canvas
  size(300, 500);
  // Greting the User
  greating();
  // And present the Menue
  menue();
}

// greating Method
void greating()
 {
   println("Welcome to the Kandinsky Circle Processing");
   println("Easy Collection Program");
 }

// Global Variable for the number of possibily drawn Lines
float number = 12;

// Method to draw a Set of simple Lines
void drawRandomLines()
{
  // Choose a amount of Lines lesser then the possibily Number
  int z = int(random(number));
  // Iterrate about the amount of Lines
  for( int zz = 0; zz < z; zz++)
  {
    // Sets a random stroke Weight
    strokeWeight(int(random(min(height, width)/36)));
    // draws the Line
    // first and second Point with random X and Y Values
    line(int(random(width)), int(random(height)), int(random(width)), int(random(height)));
  }
}

// Method to draw a Set of Bezier Lines
void drawRandomBezier()
{
  // Choose a amount of Lines lesser then the possibily Number
  int z = int(random(number));
  // Iterrate about the amount of Lines
  for( int zz = 0; zz < z; zz++)
  {
    // Sets a random stroke Weight
    strokeWeight(int(random(min(height, width)/36)));
    // draw a random Bezier Curve
    // beginning with first Point at Random Coordinates
    bezier(int(random(width)), int(random(height)),
    // then first Control Point at Random Coordinates
    int(random(width)), int(random(height)),
    // then second Control Point at Random Coordinates
    int(random(width)), int(random(height)),
    // then last Point at Random Coordinates
    int(random(width)), int(random(height)));
  }
}

// Method to draw a Set of Curve Lines
void drawRandomCurves()
{
  // Choose a amount of Lines lesser then the possibily Number
  int z = int(random(number));
  // Iterrate about the amount of Lines
  for( int zz = 0; zz < z; zz++)
  {
    // Sets a random stroke Weight
    strokeWeight(int(random(min(height, width)/36)));
    // draw a random Curve
    // beginning with first Point at Random Coordinates
    curve(int(random(width)), int(random(height)),
    // then first Control Point at Random Coordinates
    int(random(width)), int(random(height)),
    // then second Control Point at Random Coordinates    
    int(random(width)), int(random(height)),
    // then last Point at Random Coordinates
    int(random(width)), int(random(height)));
  }
}

// Method to generate the Image
void generate()
{
  // Clear and set the Background to Withe
  background(255);
  // Call Method to draw straight Lins
  drawRandomLines();
  // Call Method to draw bezier Curves
  drawRandomBezier();
  // Call Method to draw simple Curves
  drawRandomCurves();
}

// Metthod to prsent the Menue
void menue()
{
  println("Press n to generate a new Image");
  println("Press s to save the current Image");
  println("Press a to increase the probably number of Lines");
  println("Press y to decrease the probably number of Lines");
}

// empty draw Method for Compatibilty with KeyPressed Method
void draw()
{
}

// Key Pressed Method
void keyPressed()
{
  // Memorize actual pressed key
  char k = key;
  // Is n pressed generate a new Image
  if(k == 'n')
  {
    generate();
  }
  // if s is pressed save Image
  if(k == 's')
  {
    save("KandinskyLinesProcessingEasyCollection.png");
  }
  // if a pressed increase number of possibily drawn Lnes
  if(k == 'a')
  {
    // increase amount
    number = number * 1.2;
    // print new amounnt and again Menue
    println("The actual possible number of Lines is: " + number);
    println();
    menue();
  }
  // if a pressed decrease number of possibily drawn Lnes
  if(k == 'y')
  {
    // decrease amount
    number = number / 1.2;
    // print new amounnt and again Menue
    println("The actual possible number of Lines is: " + number);
    println();
    menue();
  }
}
