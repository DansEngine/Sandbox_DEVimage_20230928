//Global Variable
//
int DisplayHeight, DisplayWidth ;
float BGimageX, BGimageY, BGimageW, BGimageH;
PImage picBackground, rogWall, CPU;
Boolean nightmode = false; //Note: clock and turn on automatically
Boolean brightnessControl = false; //Note: arrow
int brightnessNumber=255; //range: 1-255
//
void setup () {
  size (820, 620);
  //fullScreen(); //displayWidth, displayHeight
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
  //Concatenation of Pathways
  String up = "..";
  String open = "/";
  String imagesPath = up + open ;
  String landScapeI = "ImageUsed/landscape/";
  //picBackground = loadImage ("../ImageUsed/landscape/photo-1618174168866-c66b9d68e983.jpg");
  picBackground = loadImage ( imagesPath + landScapeI + "photo-1618174168866-c66b9d68e983.jpg" );
  rogWall = loadImage ( imagesPath + );
  CPU = loadImage ( imagesPath + );
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
 image( rogWall,  ); //ROG STRIX WALL PAPER: see circles in aspect ratio
 image( CPU, );
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
