float residence [] = {2.67,3.31,5.82,10.02,11.03,11.18,15.88,25.47,28.24,36.28,44.84,35.82,42.94,48.92,61.23,77.14,300.65,433.76,466.99,458.22,404.96,378.82,443.9,466.71,584.51,694.3,922.61,936.4,854.2,853.1,871.5,922.8,1232.96,1403.13,1457.64,1626.95,1730.81,1822.73};
float realestate [] = {1.85,7.26,7.31,11.73,13.96,106.31,280.38,356.01,334.07,320.66,324.49,408.84,439.17,567.76,676.28,900.67,920.84,835.65,837.53,843.63,918.68,1229.83,1398.75,1451.94,1615.51,1724.65,1813.32};
float area [] = {199.61,215.99,304.32,1380.7,1363.63,1347.79,1788.44,2112.04,1790.01,1874.90,1758.29,1246.58,1339.02,1160.61,1379.18,1017.54,1349.24,1746.82,1872.65,2179.68,1963.51,1731.55,1724.02,1743.90,1880.50,2280.79,3270.43,2819.35,2746.80,2843.62,1899.40,1522.07,1415.44,1568.83,1626.73,1439.20,1549.64,1617.86};
float per1 [] = {9.6,9.3,12.8,18.4,15.5,14.7,17.2,21.5,19.2,19.5,18.3,16.7,18.9,18.9,17.1,11.8,26.8,27.1,23.9,23.2,20.6,20.4,23.7,23.4,26.7,28.3,29.9,26.4,21.8,19.1,18.0,17.5,23.2,27.7,27.7,28.8,28.8,28.7};
float per2 [] = {78.3,77.7,77.2,80.9,79.7,72.5,70.5,65.9,60.9,59.0,53.8,56.0,47.5,38.3,28.2,31.9,40,38.4,37.6,35.9,33.3,31.4,32.7,41.5,34.1,34,36.5,26.9,23.1,19.3,18.6,19.5,17.6,18.1,19.2};
PFont font;
int year;

ScrollBar timebar;

void setup(){
  size(960,600);
  smooth();
  timebar = new ScrollBar(300,485,380,30,1978,2019);
}

void draw(){
  background(0,0,0);
  noStroke();
  
  font = createFont("微软雅黑",12);
  textAlign(CENTER);
  textFont(font,12);
  textSize(20);
  fill(255);
  noStroke();
  text("1978年以来住宅投资和竣工建筑面积",480,50);
  
  textFont(font);
  textSize(16);
  fill(255);
  noStroke();
  text("年份:",315,555);
  
  noFill();
  stroke(255);
  strokeWeight(8);
  arc(480,260,200,200,radians(15),radians(75));
  arc(480,260,200,200,radians(105),radians(165));
  arc(480,260,200,200,radians(195),radians(255));
  arc(480,260,200,200,radians(285),radians(345));
  
  noFill();
  stroke(255);
  strokeWeight(1);
  
  for(int i=15; i<80; i+=5){
    line(480+86*cos(radians(i)),260+86*sin(radians(i)),480+90*cos(radians(i)),260+90*sin(radians(i)));
  }
  
  for(int i=105; i<170; i+=5){
    line(480+86*cos(radians(i)),260+86*sin(radians(i)),480+90*cos(radians(i)),260+90*sin(radians(i)));
  }
  
  for(int i=195; i<260; i+=5){
    line(480+86*cos(radians(i)),260+86*sin(radians(i)),480+90*cos(radians(i)),260+90*sin(radians(i)));
  }
  
  for(int i=285; i<350; i+=5){
    line(480+86*cos(radians(i)),260+86*sin(radians(i)),480+90*cos(radians(i)),260+90*sin(radians(i)));
  }
  
  line(230,356,250,356);
  line(230,156,250,156);
  line(830,356,850,356);
  line(830,156,850,156);
  
  noFill();
  stroke(255,255,255,50);
  strokeWeight(1);
  ellipse(180,160,120,120);
  ellipse(180,360,120,120);
  ellipse(780,160,120,120);
  ellipse(780,360,120,120);
  
  timebar.update(mouseX,mouseY);
  timebar.display();
  year = (int)timebar.getPos(); 
  
  noFill();
  stroke(103,61,233);
  strokeWeight(8);
  arc(180,160,120,120,0,radians(360*residence[year-1978]/2000));
  
  textAlign(CENTER);
  textFont(font);
  textSize(16);
  fill(103,61,233);
  noStroke();
  text("住宅投资总额",180,250);
  
  textSize(26);
  text(int(residence[year-1978]),180,170);
  
  noFill();
  stroke(249,105,28);
  strokeWeight(8);
  arc(180,360,120,120,0,radians(360*per1[year-1978]/60));
  
  textAlign(CENTER);
  textFont(font);
  textSize(16);
  fill(249,105,28);
  noStroke();
  text("占固定资产比重",180,450);
  
  textSize(26);
  text(int(per1[year-1978])+"%",180,370);
  
  noFill();
  stroke(197,64,213);
  strokeWeight(8);
  arc(780,160,120,120,0,radians(360*area[year-1978]/3600));
  
  textAlign(CENTER);
  textFont(font);
  textSize(16);
  fill(197,64,213);
  noStroke();
  text("住宅竣工建筑面积",780,250);
  
  textSize(26);
  text(int(area[year-1978]),780,170);
  
  noFill();
  stroke(146,154,13);
  strokeWeight(8);  
  if(year >= 1981){
  arc(780,360,120,120,0,radians(360*per2[year-1981]/90));
  }
  
  textAlign(CENTER);
  textFont(font);
  textSize(16);
  fill(146,154,13);
  noStroke();
  text("建筑面积竣工率",780,450);
  
  if(year >= 1981){
  textSize(26);
  text(int(per2[year-1981])+"%",780,370);
  }
  
  noFill();
  stroke(103,61,233);
  strokeWeight(8);
  arc(480,260,200,200,radians(195),radians(195+60*residence[year-1978]/1822.73));
  
  noFill();
  stroke(249,105,28);
  strokeWeight(8);
  arc(480,260,200,200,radians(105),radians(105+60*per1[year-1978]/29.9));
  
  noFill();
  stroke(197,64,213);
  strokeWeight(8);
  arc(480,260,200,200,radians(285),radians(285+60*area[year-1978]/3270.43));
  
  noFill();
  stroke(146,154,13);
  strokeWeight(8);
  
  if(year >= 1981){
  arc(480,260,200,200,radians(15),radians(15+60*per2[year-1981]/80.9));
  }
  
  noFill(); 
  stroke(255);
  strokeWeight(1);
  line(290,156,370,156);
  line(370,156,390,171);
  line(670,156,590,156);
  line(590,156,570,171);
  line(290,356,370,356);
  line(370,356,390,341);
  line(670,356,590,356);
  line(590,356,570,341);
  
  smooth();
}

void mousePressed(){
  timebar.press(mouseX,mouseY);
}

void mouseReleased(){
  timebar.release();
}
