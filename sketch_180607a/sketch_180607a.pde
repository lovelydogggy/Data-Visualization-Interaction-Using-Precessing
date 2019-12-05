PFont font;
color node_color1 = color(67,177,255,200);
color node_color2 = color(24,24,160,200);
int a = 1;
int c = 1978;
Float residence [] = {2.67,3.31,5.82,10.02,11.03,11.18,15.88,25.47,28.24,36.28,44.84,35.82,42.94,48.92,61.23,77.14,300.65,433.76,466.99,458.22,404.96,378.82,443.9,466.71,584.51,694.3,922.61,936.4,854.2,853.1,871.5,922.8,1232.96,1403.13,1457.64,1626.95,1730.81,1822.73};
Float realestate [] = {1.85,7.26,7.31,11.73,13.96,106.31,280.38,356.01,334.07,320.66,324.49,408.84,439.17,567.76,676.28,900.67,920.84,835.65,837.53,843.63,918.68,1229.83,1398.75,1451.94,1615.51,1724.65,1813.32};
Float area [] = {199.61,215.99,304.32,1380.7,1363.63,1347.79,1788.44,2112.04,1790.01,1874.90,1758.29,1246.58,1339.02,1160.61,1379.18,1017.54,1349.24,1746.82,1872.65,2179.68,1963.51,1731.55,1724.02,1743.90,1880.50,2280.79,3270.43,2819.35,2746.80,2843.62,1899.40,1522.07,1415.44,1568.83,1626.73,1439.20,1549.64,1617.86};
Float per1 [] = {18.9,27.1,23.7,26.4,23.2,28.7};
Float per2 [] = {59.0,28.2,35.9,34.1,19.3,19.2};
Float square [] = {1339.02,1746.82,1724.02,2819.35,1415.44,1617.86};
int d;
int f;
int g;

void setup(){
  size(960,600);
  smooth();
}

void draw(){
  background(0,0,0);
  
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
  
  fill(node_color1);
  rectMode(CENTER);
  stroke(node_color1);
  strokeWeight(1);
  rect(360,555,80,30,15);
  
  noFill();
  rectMode(CENTER);
  stroke(255);
  strokeWeight(1);
  rect(480,555,80,30,15);
  
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
  textFont(font,10);
  textSize(10);
  noStroke();
  for(int i=0; i<4; i++){
    text(int (2000-500*i),80,105+i*40);
    text(int (3200-800*i),80,325+i*40);
  }
  
  textAlign(CENTER);
  textFont(font,14);
  textSize(14);
  fill(255);
  text("折线图",360,560);
  text("柱状图",480,560);
  text("综合图",600,560);
  
  textAlign(CENTER);
  textFont(font,12);
  textSize(12);
  fill(255);
  text("住宅投资额（亿元）",100,85);
  text("住宅竣工建筑面积（万平方米）",100,305);
  text("年份",900,260);
  text("年份",900,480);

  interaction_();
  interaction2_();
  
  noStroke();
  fill(node_color1);
  rectMode(CENTER);
  rect(180,80,15,15);
  
  fill(node_color2);
  rect(270,80,15,15);
  smooth();
  
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
  
  judge_();
   
  mousetouch();
  judge();
}

void drawline(){
  noFill();
  stroke(node_color1);
  strokeWeight(2);
  beginShape();
  for(int i=0; i<38; i++){
    curveVertex(120+i*20,260-residence[i]/2000*160);
  }
  curveVertex(120+37*20,260-residence[37]/2000*160);
  endShape();
  
  noFill();
  stroke(node_color1);
  strokeWeight(2);
  beginShape();
  for(int i=0; i<38; i++){
    curveVertex(120+i*20,480-area[i]/3200*160);
  }
  curveVertex(120+37*20,480-area[37]/3200*160);
  endShape();
  
  noFill();
  stroke(node_color2);
  strokeWeight(2);
  beginShape();
  for(int i=0; i<27; i++){
    curveVertex(340+i*20,260-realestate[i]/2000*160);
  }
  curveVertex(340+26*20,260-realestate[26]/2000*160);
  endShape();
}

void mousetouch(){
  if(mouseX >= 440 & mouseX <= 520 & mouseY >= 540 & mouseY <= 570){
    fill(node_color2);
    textSize(14);
    text("柱状图",480,560);
    
    noFill();
    rectMode(CENTER);
    stroke(node_color2);
    strokeWeight(1);
    rect(480,555,80,30,15);
    
    if(mousePressed){
      a = 2;
    }
  }
  
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

void judge(){
  if(a == 2){
    drawpage2();
  }
  if(a == 3){
    drawpage3();
  }
}

void interaction_(){
  for(int i=0; i<38; i++){
    noStroke();
    fill(node_color1);
    ellipse(120+i*20,260-residence[i]/2000*160,5,5);
    
    if(dist(mouseX,mouseY,120+i*20,260-residence[i]/2000*160) <= 5){
      textAlign(CENTER);
      textFont(font);
      textSize(8);
      fill(node_color1);
      noStroke();
      text(int(residence[i]),120+i*20,225-residence[i]/2000*160);
    }
  }
  
  for(int i=0; i<27; i++){ 
    noStroke();
    fill(node_color2);
    ellipse(340+i*20,260-realestate[i]/2000*160,5,5);
    
    if(dist(mouseX,mouseY,340+i*20,260-realestate[i]/2000*160) <= 5){
      textAlign(CENTER);
      textFont(font);
      textSize(8);
      fill(node_color2);
      noStroke();
      text(int(realestate[i]),340+i*20,235-realestate[i]/2000*160);
    }
  }
}

void interaction2_(){
  for(int i=0; i<38; i++){
    fill(node_color1);
    rectMode(CENTER);
    rect(120+i*20,480-area[i]/3200*160,6,6);
    
    if(mouseX >=117+i*20 & mouseX <= 123+i*20 & mouseY <= 483-area[i]/3200*160 & mouseY >= 477-area[i]/3200*160){
      textAlign(CENTER);
      textFont(font);
      textSize(8);
      fill(node_color1);
      noStroke();
      text(int(area[i]),120+i*20,460-area[i]/3200*160);
    }
  }
}

void judge_(){
  if(key == 'd'){
    d = 1;
  }
  
  if(key == 'f'){
    d = 2;
  }
  
  if(key == 's'){
    f = 3;
  }
  
  if(key == 'a'){
    f = 4;
  }
  
  if(d == 1){
    drawline();
  }
  
  if(f == 3){
    for(int i=0; i<38; i++){
    noStroke();
    fill(node_color1);
    ellipse(120+i*20,260-residence[i]/2000*160,5,5);
    
    textAlign(CENTER);
    textFont(font);
    textSize(8);
    fill(node_color1);
    noStroke();
    text(int(residence[i]),120+i*20,225-residence[i]/2000*160);
    }
    
    for(int i=0; i<27; i++){ 
    noStroke();
    fill(node_color2);
    ellipse(340+i*20,260-realestate[i]/2000*160,5,5);
    
    textAlign(CENTER);
    textFont(font);
    textSize(8);
    fill(node_color2);
    noStroke();
    text(int(realestate[i]),340+i*20,235-realestate[i]/2000*160);
    }
    
    for(int i=0; i<38; i++){
    fill(node_color1);
    rectMode(CENTER);
    rect(120+i*20,480-area[i]/3200*160,6,6);
    
    textAlign(CENTER);
    textFont(font);
    textSize(8);
    fill(node_color1);
    noStroke();
    text(int(area[i]),120+i*20,460-area[i]/3200*160);
    }
  }
}



