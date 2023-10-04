//Global Variable
//
int DisplayHeight, DisplayWidth ;
float BGimageX, BGimageY, BGimageW, BGimageH;
PImage picBackground;
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
  picBackground = loadImage ("../ImagesUsed/LandScape/photo-1503614472-8c93d56e92ce.jpg");
  //
  //population
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
  if ( brightnessControl==true) tint(255, brightnessNumber);
  if ( nightmode==true ) tint(250, 242, 3); //Gray scale: (rgb)
  if ( nightmode==true ) { 
  tint(250, 242, 3);
  println(nightmode);
  } else {
  noTint(); //See Processing DOC
  println(nightmode);
  }
  image( picBackground, BGimageX, BGimageY, BGimageW, BGimageH );
  //
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
} //END KP
//
void mousePressed() {
  //
} //END MP
//
//END MAIN Program
