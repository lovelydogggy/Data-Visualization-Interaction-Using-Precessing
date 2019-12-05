class ScrollBar{
  int x, y;  
  int sw, sh;
  int pos;
  int posMin, posMax;
  int minVal, maxVal;
  
  boolean rollover;
  boolean locked;
  
  ScrollBar(int xp, int yp, int w, int h, int miv, int mav){
    x = xp;
    y = yp;
    sw = w;
    sh = h;
    minVal = miv;
    maxVal = mav;
    pos = x + sw / 2 - sh / 2;
    posMin = x;
    posMax = x + sw - sh;
  }
  
  void update(int mx, int my){
    if (over(mx, my) == true){
      rollover = true;
    }
    else{
      rollover = false;
    }
    if (locked == true){
      pos = constrain(mx - sh / 2, posMin, posMax);
    }
  }
  
  void press(int mx, int my){
    if (rollover == true){
      locked = true;
    }
    else{
      locked = false;
    }
  }
  
  void release(){
    locked = false;
  }
  
  boolean over(int mx, int my){
    if ((mx > x) && (mx < x + sw) && (my > y) && (my < y + sh)){
      return true;
    }
    else{
      return false;
    }
  }
  
  void display(){
    noStroke();
    fill(0,150,255);
    rectMode(CORNER);
    rect(x, y, sw, sh);  
    text(year, 360, 555); 
    
    if ((rollover == true) || (locked == true)){
      fill(0,255,255);
      text(year, 360, 555); 
    }
    else{
      fill(0,0,255);
    }
    rect(pos, y, sh, sh);
  }
  
  float getPos(){
    float scalar = sw / (sw - sh);
    float ratio = (pos - x) * scalar;
    float offset = minVal + (ratio / sw * (maxVal - minVal));
    return offset;
  }  
}
