//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var lightningSize = 1;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  strokeWeight(lightningSize);
  stroke(0,0,0);
  line(208, 112, 182, 154);
  line(182, 154, 211, 185 );
  line( 211, 185, 178, 227);
  line( 178, 227, 219, 260);
  line( 219, 260, 168,296 );
  line(168, 296,200,333)
  lightningSize = lightningSize + 1;
  
  if(lightningSize>20){
     lightningSize=1
  }

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
