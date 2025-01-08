//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400);
    

}

//🎯Variable Declarations Go Here
var lightningSize = 1;
var rainY=113;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);

  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  
  stroke(255,255,255);
  strokeWeight(lightningSize);
  line(208, 112, 182, 154);
  line(182, 154, 211, 185 );
  line( 211, 185, 178, 227);
  line( 178, 227, 219, 260);
  line( 219, 260, 168,296 );
  line(168, 296,200,333);
  line(61, 143,31, 171);
  line(31,171,56,187);
  line(56,187,33,210);
  line(33,210,54,230);
  line(123,120,112,147);
  line(112,147,128,153);
  line(128,153,114,174);
  lightningSize = lightningSize + 1;
  
  if(lightningSize>10){
     lightningSize=1;
     
  }

  stroke(79, 2, 254 );
  strokeWeight(1)
 ellipse(82,rainY,1,10)
 ellipse(168,rainY,1,10)
 ellipse(263,rainY,1,10)
 ellipse(338,rainY,1,10)
   rainY=rainY+5 ;
   
   if(rainY>300){rainY=113;}
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
