void setup(){
  
  fullScreen();
  
  colorMode(HSB);
  
  noStroke();
  
}


void draw(){
  
  timeCalc();
  
  if(currentTime - lastShown >= showRate){
    
    showall();
    
    lastShown = currentTime;
    
  }
  
  updateall();
  
}