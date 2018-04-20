class drop{
  
  float x, y, size;
  
  float popsize;
  
  boolean dropping;
  
  float vely, velx;
  
  boolean alive;
  
  int deadtime;
  
  float bouncerate;
  
  int hue;
  
  float xspeed;
  
  drop(){
    
    x = random(width);
    y = 0;
    
    size = 0;
    
    popsize = random(3, 10);
    
    dropping = false;
    
    vely = 0;
    
    xspeed = 10;
    
    velx = random(-xspeed, xspeed);
    
    alive = true;
    
    deadtime = 0;
    
    bouncerate = random(0.5, 0.8);
    
    hue = int(random(255));
    
  }
  
  
  boolean is_alive(){return alive;}
  
  
  void show(){
    
    fill(hue, 255, 255);
    ellipse(x, y, size*2, size*2);
    
  }
  
  
  void update(){
    
    if(alive){
      if(!dropping){
        
        size += 0.2;
        
        if(size >= popsize){
          
          dropping = true;
          
        }
        
      }else {
        
        vely -= grav;
        
        y += vely;
        x += velx;
        
        if(y + size > height){
          vely *= -bouncerate;
        }
        
        if(x + size > width || x - size < 0){
          velx *= -bouncerate;
          p.add(new pop(x, y, hue));
        }
        
        if(vely <= 1 && vely >= -1){
          deadtime++;
        }else {
          deadtime = 0;
        }
        
        if(deadtime >= 100){
          alive = false;
        }
        
      }
      
    }
  }
  
}