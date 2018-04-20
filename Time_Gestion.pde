int currentTime = 0;
int pastTime = 0;

int lastShown = 0;
int showRate = 30;

void timeCalc(){
  
  pastTime = currentTime;
  currentTime = millis();
  
}