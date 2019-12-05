int e = 1;

void drawpage2(){
  background(0);
  
  font = createFont("微软雅黑",12);
  textAlign(CENTER);
  textFont(font,12);
  textSize(20);
  fill(255);
  noStroke();
  text("1978年以来住宅投资和竣工建筑面积",480,50);
  
  noFill();
  stroke(255);
  strokeWeight(1);
  line(100,95,100,260);
  line(100,260,860,260);
  line(100,315,100,480);
  line(100,480,860,480);
  
  for(int i=0; i<39; i++){
    line(100+i*20,260,100+i*20,256);
    line(100+i*20,480,100+i*20,476);
  }
  
  for(int j=0; j<4; j++){
    line(100,100+j*40,102,100+j*40);
    line(100,320+j*40,102,320+j*40);
  }
  
  noFill();
  rectMode(CENTER);
  stroke(255);
  strokeWeight(1);
  rect(360,555,80,30,15);
  
  fill(node_color1);
  rectMode(CENTER);
  stroke(node_color1);
  strokeWeight(1);
  rect(480,555,80,30,15);
  
  noFill();
  rectMode(CENTER);
  stroke(255);
  strokeWeight(1);
  rect(600,555,80,30,15);
  
  textAlign(CENTER);
  textFont(font,10);
  textSize(10);
  fill(255);
  noStroke();
  for(int i=2; i<39; i+=5){
    text(int (c+i),120+i*20,273);
    text(int (c+i),120+i*20,493);
  }
  
  textAlign(CENTER);
  textFont(font,14);
  textSize(14);
  fill(255);
  text("折线图",360,560);
  text("柱状图",480,560);
  text("综合图",600,560);
  
  textAlign(CENTER);
  textFont(font,10);
  textSize(10);
  noStroke();
  for(int i=0; i<4; i++){
    text(int (2000-500*i),80,105+i*40);
    text(int (3200-800*i),80,325+i*40);
  }
  
  textAlign(CENTER);
  textFont(font,12);
  textSize(12);
  fill(255);
  text("住宅投资额（亿元）",100,85);
  text("住宅竣工建筑面积（万平方米）",100,305);
  text("年份",900,260);
  text("年份",900,480);
  
  textAlign(CENTER);
  textFont(font, 12);
  textSize(12);
  fill(node_color1);
  text("投资总额",217,84.5);
  
  textAlign(CENTER);
  textFont(font, 12);
  textSize(12);
  fill(24,24,160);
  text("房地产",300,84.5);
  
  noStroke();
  fill(node_color1);
  rectMode(CENTER);
  rect(180,80,15,15);
  
  fill(node_color2);
  rect(270,80,15,15);
  
  judge2();  
  interaction();
  interaction2();
  
  smooth(); 
  mousetouch2();
}

void mousetouch2(){
  if(mouseX >= 560 & mouseX <= 640 & mouseY >= 540 & mouseY <= 570){
    fill(node_color2);
    textSize(14);
    text("综合图",600,560);
    
    noFill();
    rectMode(CENTER);
    stroke(node_color2);
    strokeWeight(1);
    rect(600,555,80,30,15);
    
    if(mousePressed){
      a = 3;
    }
  }
}

void interaction(){
  for(int i=0; i<38; i++){
    noStroke();
    fill(node_color1);
    rectMode(CENTER);
    rect(117+i*20,260-residence[i]/4000*160,6,residence[i]/2000*160);
    
    if(mouseX >=114+i*20 & mouseX <= 120+i*20 & mouseY <= 260 & mouseY >= 260-residence[i]/2000*160){
      textAlign(CENTER);
      textFont(font);
      textSize(8);
      fill(node_color1);
      noStroke();
      text(int(residence[i]),117+i*20,252-residence[i]/2000*160);
    }
  }
  
  for(int i=0; i<27; i++){ 
    noStroke();
    fill(node_color2);
    rectMode(CENTER);
    rect(343+i*20,260-realestate[i]/4000*160,6,realestate[i]/2000*160);
    
    if(mouseX >=340+i*20 & mouseX <= 346+i*20 & mouseY <= 260 & mouseY >= 260-realestate[i]/2000*160){
      textAlign(CENTER);
      textFont(font);
      textSize(8);
      fill(node_color2);
      noStroke();
      text(int(realestate[i]),343+i*20,239-realestate[i]/2000*160);
    }
  }
}

void interaction2(){
  for(int i=0; i<38; i++){
    fill(node_color1);
    rectMode(CENTER);
    rect(120+i*20,480-area[i]/6400*160,10,area[i]/3200*160);
    
    if(mouseX >=115+i*20 & mouseX <= 125+i*20 & mouseY <= 480 & mouseY >= 480-area[i]/3200*160){
      textAlign(CENTER);
      textFont(font);
      textSize(8);
      fill(node_color1);
      noStroke();
      text(int(area[i]),120+i*20,465-area[i]/3200*160);
    }
  }
}

void judge2(){
  if(key == 'g'){
    g = 5;
  }
  
  if(key == 'h'){
    g = 6;
  }
  
  if(g == 5){
    for(int i=0; i<38; i++){
    noStroke();
    fill(node_color1);
    rectMode(CENTER);
    rect(117+i*20,260-residence[i]/4000*160,6,residence[i]/2000*160);
    
    textAlign(CENTER);
    textFont(font);
    textSize(8);
    fill(node_color1);
    noStroke();
    text(int(residence[i]),117+i*20,252-residence[i]/2000*160);
    }
  
  for(int i=0; i<27; i++){ 
    noStroke();
    fill(node_color2);
    rectMode(CENTER);
    rect(343+i*20,260-realestate[i]/4000*160,6,realestate[i]/2000*160);
    
    textAlign(CENTER);
    textFont(font);
    textSize(8);
    fill(node_color2);
    noStroke();
    text(int(realestate[i]),343+i*20,239-realestate[i]/2000*160);
    }
  
    for(int i=0; i<38; i++){
    fill(node_color1);
    rectMode(CENTER);
    rect(120+i*20,480-area[i]/6400*160,10,area[i]/3200*160);
    
    textAlign(CENTER);
    textFont(font);
    textSize(8);
    fill(node_color1);
    noStroke();
    text(int(area[i]),120+i*20,465-area[i]/3200*160);
    }
  }
}
