// Intialise the Application
void setup()
{
  // Set the Size for the Canvas
  size(300, 500);
}

// Draws a decreasing Line
void drawCreasingLine( float x1, float y1, float x2, float y2, boolean di, int d)
{
  // Avoid Boundries Lines
  noStroke();
  
  // Declares Memory for thickness Parameter
  float thick;
  // Checks for Direction
  // True is vertical increasing Line
  if(di)
  {
    // Iterates about the y Direction beetween
    // Starting and Ending Value of Y Direction
    for(float z = y1; z < y2; z++)
    {
      // Calculate actual thickness from Iteration Parameter
      // from Value of X Space by Y Space
      thick = ((x2-x1-d)/(y2-y1)*(z-y1))+d;
      // Draws the actual Circle
      circle((x1+x2)/2, z, thick);
    }
  }
  // False is horizontal Direction
  else
  {
    // Iterates about the X Direction beetween
    // Starting and Ending Value of X Direction 
    for(float z = x1; z < x2; z++)
    {
      
      // Calculate actual thickness from Iteration Parameter
      // from Value of Y Space by X Space
      thick = (y2-y1-d)/(x2-x1)*(x2 - z)+d;
      // draws the actual Circle
      circle(z, (y1+y2)/2, thick);
    }
  }
}

// Method to generate the Image
void generate()
{
  // Clear the Background and Set Background to Whithe
  background(255);
  
  // Calculartion of Parameters for drawing creasig Lines horizontal
  // Calculate first above Y Position with min Boundry
  int y1 = int(random(height/6))+((height/6)*5-12);
  // Calculate Space in Y Direction for first horizontal Line with min Boundary
  int ydif2 = int(random((height - y1) - ((height -y1)/3)))+((height -y1)/3);
  // Calculate second Y Position 
  int y2 = ydif2/2 + y1;
  // Calculate Space in Y Direction for second horizontal Line with min Boundary  
  int ydif3 = int(random((height - y2) - ((height -y2)/3)))+ ((height -y2)/3);
  // Calculate third Y Position
  int y3 = ydif3 + y2;
  
  // Callculate X Space for horizontal Lines
  // Callculate left X Space
  int x1 = max(int(random((width/6)-(width/36)))+(width/36), 3);
  // Callculate right Space
  int x2 = min(width - int(random((width/6))) - (width/36), width-3);
  
  // Set left X Position such that creasing Line will fit on Canvas
  x1 = max(ydif2, ydif3, x1);
  
  // Set the Color for first horizontal creasing Line
  fill(255, 0, 0);
  // Draws first horizontal creasing Line
  drawCreasingLine(x1, y1, x2, y2, false, 1);
  
  // Set the Color for second horizontal creasing Line
  fill(0, 255, 0);
  // Draws second horizontal creasing Line
  drawCreasingLine(x1, y2, x2, y3, false, 1);
  
  // Calculartion of Parameters for drawing creasig Lines vertical
  // Calculation for right Boudary of first vertical creasing Line
  int x1d = x1; // int(random((width/6)-(width/36)))+(width/36);
  // Calculation for middle Boundary between first and second vertical creasing Line
  int x2d = int(random(x1d - (x1d/4)))+(x1d/4);
  // Calculation for left Boundary of second vertical creasing Line
  int x3d = int(random(x2d - (x1d/4)));
  
  // Calcultion of Space between top of the Canvas and vertical creasing Lines
  int y1d = max( int(random(height-((height/6)*5)))+(height/6), 3);
  // Calculation of Position of top of the vertical crasing Lines
  int y2d = y1 - max(y3-y2, y2 - y1)/2;
   
   // Set Color for the second vertical creasing Line
   fill(255, 255, 0);
   // Draws the second vertical Line
   drawCreasingLine(x3d, y1d, x2d, y2d, true, 1);
   // Set Color for the first vertical Line
   fill(0,0, 255);
   // Draws the first verrtical Line
   drawCreasingLine(x2d, y1d, x1d, y2d, true, 1);
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
    save("KandinskyLinesProcessingDirectionns.png");
  }
}
