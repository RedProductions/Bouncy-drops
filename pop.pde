class pop{
  
  float x, y, size;
  
  float velx, vely;
  
  float hue;
  
  boolean alive;
  
  pop(float nx, float ny, float nhue){
    
    x = nx;
    
    y = ny;
    
    hue = nhue;
    
    alive = true;
    
    velx = random(-5, 5);
    
    vely = 0;
    
  }
  
  
  boolean is_alive(){return alive;}
  
  
  void show(){
    
    fill(hue, 255, 255);
    ellipse(x, y, size*2, size*2);
    
    
  }
  
  void update(){
    
    vely -= grav;
    
    y += vely;
    x += velx;
    
    if(x + size > width || x - size < 0){
        velx *= -1;
      }
    
    if(y - size > height){
      alive = false;
    }
    
  }
  
  
  
}