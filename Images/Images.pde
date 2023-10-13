//Global Variable
//
int DisplayHeight, DisplayWidth ;
float BGimageX, BGimageY, BGimageW, BGimageH;
float CPUx, CPUy, CPUW, CPUH;
float ROGx, ROGy, ROGW, ROGH;
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
  //
  ROGx = DisplayWidth*1/7 ;
  ROGy = DisplayHeight*1/8 ;
  ROGW = DisplayWidth*2/7 ;
  ROGH = DisplayHeight*1/4 ;
  //
  CPUx = ROGx ;
  CPUy = DisplayHeight*5/8 ;
  CPUW = ROGW ;
  CPUH = ROGH ;
  //Aspect ratio calcuations
  //Determine aspect ratio
  //Compare dimension to get larger dimension
  //calculate smaller dimension
  //Concatenation of Pathways
  //rewrite variables based on rect() cars
  BGimageX = ;
  BGimageY = ;
  CPUx = ;
  CPUy = ;
  ROGx = ;
  ROGy = ;
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
  rogWall = loadImage ( imagesPath + landScapeI + CPUimage); //Concatenation
  CPU = loadImage ( imagesPath + landScapeI + ROGimage);
  //
  //population
  //nightmode = false
  int hourNightmode = hour (); // 24:hour
  println(hourNightmode);
  if ( hourNightmode>17 ) {
    nightmode=true;
  } else if ( hourNightmode<05 ) {
    nightmode=true;
  } else {
    nightmode=false;
    println (nightmode);
  }
  //
  //DIVs
  //rect( BGimageX, BGimageY, BGimageW, BGimageH );
  //
  //tint(255, 255); //Gray scale: 1/2 (i.e 128/256= 1/2)
  //tint(60, 60, 40); //Gray scale: (rgb)
  //image( picBackground, BGimageX, BGimageY, BGimageW, BGimageH );
  //
} //END
//
void draw() {
  //background(255);
  rect( BGimageX, BGimageY, BGimageW, BGimageH );
  rect( ROGx, ROGy, ROGW, ROGH );
  rect( CPUx, CPUy, CPUW, CPUH );
  //
  // ( [BRIGHTNESS, see keyPressed] ) tint(255, 255); //Gray scale: 1/2 (i.e 128/256= 1/2)
  if ( nightmode==true ) { 
  tint(250, 242, 3);
  //println(nightmode);
  } else {
  noTint(); //See Processing DOC
  //println(nightmode);
  }
  //
  if ( brightnessControl==true) tint(255, brightnessNumber);
  if ( brightnessNumber<1 ) {
    brightnessNumber=1; 
   } else if (
     brightnessNumber>255 ) {
       brightnessNumber=255; 
  } else { 
    //EMPTY ELSE ; Console
   tint(255, brightnessNumber );
   println ( brightnessNumber );
 }
 background ( 0 );
 if ( nightmode==true ) tint(250, 242, 3); //Gray scale: (rgb)
 image( picBackground, BGimageX, BGimageY, BGimageW, BGimageH );
 image( rogWall, ROGx, ROGy, ROGW, ROGH  ); //ROG STRIX WALL PAPER: see circles in aspect ratio
 image( CPU, CPUx, CPUy, CPUW, CPUH );
} //END DRAW
//
void keyPressed() {
  if ( key=='p' || key=='P' ) {
  if (nightmode==true) { //Nightmode, basic control is Boolean
    nightmode = false;
  } else {
    nightmode = true;
  }
 }
  //Brightness : ARROWS activate birghtnessControl, never off
  //Note: nightmode doees turn off
  if ( key==CODED && keyCode==UP || keyCode==DOWN ) { //brightness keybind
  brightnessControl = true;
  if ( key==CODED && keyCode==UP ) brightnessNumber++ ; //brightnessNumber +=1 // brightnessNumber = brightnessNumber+1
  if ( key==CODED && keyCode==DOWN ) brightnessNumber-- ; //brightnessNumber -=1 // brightnessNumber = brightnessNumber-1
  //Continued tomorow
  }
  //
  println(brightnessNumber);
  //
} //END KP
//
void mousePressed() {
  //
} //END MP
//
//END MAIN Program
