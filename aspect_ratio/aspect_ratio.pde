//Global Variable
//
int DisplayHeight, DisplayWidth ;
float BGimageX, BGimageY, BGimageW, BGimageH;
float CPUW, CPUH;
float ROGW, ROGH;
float ROGxrect, ROGyrect, ROGWrect, ROGHrect;
float CPUxrect, CPUyrect, CPUWrect, CPUHrect;
PImage picBackground, rogWall, CPU;
Boolean nightmode = false; //Note: clock and turn on automatically
Boolean brightnessControl = false; //Note: arrow
int brightnessNumber=255; //range: 1-255
//
void setup () {
  //size ();
  fullScreen(); //displayWidth, displayHeight
  //size(X>Y, Y<X); //landscape
  //Copy Display Orientation
  DisplayWidth = displayWidth ;
  DisplayHeight = displayHeight ;
  //
  //[float(setup)]
  BGimageX = DisplayWidth*0 ;
  BGimageY = DisplayHeight*0 ;
  BGimageW = DisplayWidth-1 ;
  BGimageH = DisplayHeight-1 ;
  ROGxrect = DisplayWidth*1/7 ;
  ROGyrect = DisplayHeight*1/8 ;
  ROGW = DisplayWidth*2/7 ;
  ROGH = DisplayHeight*1/4 ;
  CPUxrect = ROGW ;
  CPUyrect = DisplayHeight*5/8 ;
  CPUW = ROGW ;
  CPUH = ROGH ;
  //Aspect ratio change (properties)
  ROGxrect = DisplayWidth*1/7 ;
  ROGyrect = DisplayHeight*1/8 ;
  ROGWrect = DisplayWidth*2/7 ;
  ROGHrect = DisplayHeight*1/4 ;
  CPUxrect = ROGxrect ;
  CPUyrect = DisplayHeight*5/8 ;
  CPUWrect = ROGW ;
  CPUHrect = ROGH ;
  //
  ROGW = 1920.0;
  ROGH = 1200.0;
  CPUW = 1000.0;
  CPUH = 1333.0;
  float aspectRatio = 0.0; //Local Variable
  float rectDimensionMemory = 0.0; //Assigned ZERO b/c IF'
 if ( ROGW > ROGH ) { //ROG Image if Landscape
 //Comparison verification
 aspectRatio = ROGH / ROGW; // smaller/large=0 if int, use float()
 //momory of smaller side
 ROGW = ROGWrect;
 ROGH = aspectRatio * ROGW;
 //if () {} //ERROR Catch is ROGH > ROGHrect
 println("rogWall is landscape");
  } else {
    //Comparison verification
 aspectRatio = ROGW / ROGH; // smaller/large=0 if int, use float()
 //momory of smaller side
 ROGH = ROGHrect;
 ROGW = aspectRatio * ROGH;
 //if () {} //ERROR Catch is ROGH > ROGHrect
 println("rogWall is landscape");
 println("ERROR: Aspect Calcualtion Too Big");
   } //END IF
 //
 //
 if ( CPUH > CPUW ) {
   aspectRatio = CPUW / CPUH; // smaller/large=0 if int, use float()
 //momory of smaller side
 CPUW = CPUWrect;
 CPUH = aspectRatio * CPUW;
 println("CPU is portrait");
  } else {
    aspectRatio = CPUH / CPUW; // smaller/large=0 if int, use float()
 //momory of smaller side
 CPUH = CPUHrect;
 CPUW = aspectRatio * CPUH;
 println("CPU is landscape");
   } //END IF
 //
 //
  //original aspect raitos of images to change
  // compare the side lengths to see which is bigger
  //"Compress" the biggest side into the rect()
  //Multiple th image's aspect ratio to the smaller side
  //
  //Aspect ratio calcuations
  //Determine aspect ratio
  //Compare dimension to get larger dimension
  //calculate smaller dimension
  //Concatenation of Pathways
  //rewrite variables based on rect() cars
  //
  String up = "..";
  String open = "/";
  String imagesPath = up + open ;
  String landScapeI = "ImageUsed/landscape/";
  String picBG = "photo-1618174168866-c66b9d68e983.jpg";
  String ROGimage = "ROG_STRIX_product_wallpaper_1920x1200.jpg";
  String CPUimage = "board-453758_1280.jpg";
  //picBackground = loadImage ("../ImageUsed/landscape/photo-1618174168866-c66b9d68e983.jpg");
  picBackground = loadImage ( imagesPath + landScapeI + picBG );
  rogWall = loadImage ( imagesPath + landScapeI + ROGimage); //Concatenation
  CPU = loadImage ( imagesPath + landScapeI + CPUimage);
  //
  //population
  //nightmode = false
}
void draw() {
  //background(255);
  image( picBackground, BGimageX, BGimageY, BGimageW, BGimageH );
  image( rogWall, ROGxrect, ROGyrect, ROGW, ROGH );
  rect( ROGxrect, ROGyrect, ROGW, ROGH );
  image( CPU, CPUxrect, CPUyrect, CPUW, CPUH );
  //
  // ( [BRIGHTNESS, see keyPressed] ) tint(255, 255); //Gray scale: 1/2 (i.e 128/256= 1/2)
  //
} //END DRAW
