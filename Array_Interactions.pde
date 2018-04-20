void showall(){
  
  background(0);
  
  for(drop part : d){
    
    part.show();
    
  }
  
  for(pop part : p){
    
    part.show();
    
  }
  
}


void updateall(){
  
  for(int i = d.size() - 1; i >= 0; i--){
    
    drop part = d.get(i);
    
    part.update();
    
    if(!part.is_alive()){
      
      d.remove(part);
      
    }
    
  }
  
  
  for(int i = p.size() - 1; i >= 0; i--){
    
    pop part = p.get(i);
    
    part.update();
    
    if(!part.is_alive()){
      
      p.remove(part);
      
    }
    
  }
  
  for(int i = 0; i < spawnrate; i++){
    
    d.add(new drop());
    
  }
  
}