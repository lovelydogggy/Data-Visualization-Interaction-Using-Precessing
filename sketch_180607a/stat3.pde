void drawpage3(){
  background(0);
  
  font = createFont("微软雅黑",12);
  textAlign(CENTER);
  textFont(font,12);
  textSize(20);
  fill(255);
  noStroke();
  text("1978年以来住宅投资和竣工建筑面积",480,50);
  
  noFill();
  rectMode(CENTER);
  stroke(255);
  strokeWeight(1);
  rect(360,555,80,30,15);
  
  noFill();
  rectMode(CENTER);
  stroke(255);
  strokeWeight(1);
  rect(480,555,80,30,15);
  
  fill(node_color1);
  rectMode(CENTER);
  stroke(node_color1);
  strokeWeight(1);
  rect(600,555,80,30,15);
  
  textAlign(CENTER);
  textFont(font,14);
  textSize(14);
  fill(255);
  text("折线图",360,560);
  text("柱状图",480,560);
  text("综合图",600,560);
  
  noStroke();
  fill(245,165,16,200);
  quad(290-80*tan(PI/6),200,290+80*tan(PI/6),200,290+80*tan(PI/6)+residence[12]*cos(PI/3)/5,200-residence[12]*sin(PI/3)/5,290-80*tan(PI/6)-residence[12]*cos(PI/3)/5,200-residence[12]*sin(PI/3)/5);
  quad(290+80*tan(PI/6),200,290+160*tan(PI/6),280,290+160*tan(PI/6)+residence[17]/12,280,290+80*tan(PI/6)+residence[17]/12*cos(PI/3),200-residence[17]/12*sin(PI/3));
  quad(290+160*tan(PI/6),280,290+80*tan(PI/6),360,290+80*tan(PI/6)+residence[22]/12*cos(PI/3),360+residence[22]/12*sin(PI/3),290+160*tan(PI/6)+residence[22]/12,280);
  quad(290+80*tan(PI/6),360,290-80*tan(PI/6),360,290-80*tan(PI/6)-residence[27]/12*cos(PI/3),360+residence[27]/12*sin(PI/3),290+80*tan(PI/6)+residence[27]/12*cos(PI/3),360+residence[27]/12*sin(PI/3));
  quad(290-80*tan(PI/6),360,290-160*tan(PI/6),280,290-160*tan(PI/6)-residence[32]/12,280,290-80*tan(PI/6)-residence[32]/12*cos(PI/3),360+residence[32]/12*sin(PI/3));
  quad(290-160*tan(PI/6),280,290-80*tan(PI/6),200,290-80*tan(PI/6)-residence[37]/15*cos(PI/3),200-residence[37]/15*sin(PI/3),290-160*tan(PI/6)-residence[37]/15,280);
  
  noStroke();
  fill(116,51,183);
  quad(290-80*tan(PI/6),200,290+80*tan(PI/6),200,290+80*tan(PI/6)+realestate[1]*cos(PI/3)/5,200-realestate[1]*sin(PI/3)/5,290-80*tan(PI/6)-realestate[1]*cos(PI/3)/5,200-realestate[1]*sin(PI/3)/5);
  quad(290+80*tan(PI/6),200,290+160*tan(PI/6),280,290+160*tan(PI/6)+realestate[6]/15,280,290+80*tan(PI/6)+realestate[6]/15*cos(PI/3),200-realestate[6]/15*sin(PI/3));
  quad(290+160*tan(PI/6),280,290+80*tan(PI/6),360,290+80*tan(PI/6)+realestate[11]/15*cos(PI/3),360+realestate[11]/15*sin(PI/3),290+160*tan(PI/6)+realestate[11]/15,280);
  quad(290+80*tan(PI/6),360,290-80*tan(PI/6),360,290-80*tan(PI/6)-realestate[16]/15*cos(PI/3),360+realestate[16]/15*sin(PI/3),290+80*tan(PI/6)+realestate[16]/15*cos(PI/3),360+realestate[16]/15*sin(PI/3));
  quad(290-80*tan(PI/6),360,290-160*tan(PI/6),280,290-160*tan(PI/6)-realestate[21]/15,280,290-80*tan(PI/6)-realestate[21]/15*cos(PI/3),360+realestate[21]/15*sin(PI/3));
  quad(290-160*tan(PI/6),280,290-80*tan(PI/6),200,290-80*tan(PI/6)-realestate[26]/18*cos(PI/3),200-realestate[26]/18*sin(PI/3),290-160*tan(PI/6)-realestate[26]/18,280);
  
  noStroke();
  fill(22,34,84);
  quad(290-80*tan(PI/6),200,290+80*tan(PI/6),200,290+80*tan(PI/6)+residence[12]*cos(PI/3)*per1[0]/500,200-residence[12]*sin(PI/3)*per1[0]/500,290-80*tan(PI/6)-residence[12]*cos(PI/3)*per1[0]/500,200-residence[12]*sin(PI/3)*per1[0]/500);
  quad(290+80*tan(PI/6),200,290+160*tan(PI/6),280,290+160*tan(PI/6)+residence[17]*per1[1]/1200,280,290+80*tan(PI/6)+residence[17]*per1[1]/1200*cos(PI/3),200-residence[17]*per1[1]/1200*sin(PI/3));
  quad(290+160*tan(PI/6),280,290+80*tan(PI/6),360,290+80*tan(PI/6)+residence[22]*per1[2]/1200*cos(PI/3),360+residence[22]*per1[2]/1200*sin(PI/3),290+160*tan(PI/6)+residence[22]*per1[2]/1200,280);
  quad(290+80*tan(PI/6),360,290-80*tan(PI/6),360,290-80*tan(PI/6)-residence[27]*per1[3]/1200*cos(PI/3),360+residence[27]*per1[3]/1200*sin(PI/3),290+80*tan(PI/6)+residence[27]*per1[3]/1200*cos(PI/3),360+residence[27]*per1[3]/1200*sin(PI/3));
  quad(290-80*tan(PI/6),360,290-160*tan(PI/6),280,290-160*tan(PI/6)-residence[32]*per1[4]/1200,280,290-80*tan(PI/6)-residence[32]*per1[4]/1200*cos(PI/3),360+residence[32]*per1[4]/1200*sin(PI/3));
  quad(290-160*tan(PI/6),280,290-80*tan(PI/6),200,290-80*tan(PI/6)-residence[37]*per1[5]/1500*cos(PI/3),200-residence[37]*per1[5]/1500*sin(PI/3),290-160*tan(PI/6)-residence[37]*per1[5]/1500,280);
  smooth();
  
  noFill();
  stroke(255);
  strokeWeight(0.5);
  line(290-80*tan(PI/6),200,290+80*tan(PI/6),200);
  line(290+80*tan(PI/6),200,290+160*tan(PI/6),280);
  line(290+160*tan(PI/6),280,290+80*tan(PI/6),360);
  line(290+80*tan(PI/6),360,290-80*tan(PI/6),360);
  line(290-80*tan(PI/6),360,290-160*tan(PI/6),280);
  line(290-160*tan(PI/6),280,290-80*tan(PI/6),200);
  smooth();
  
  stroke(255);
  strokeWeight(2);
  line(290+80*tan(PI/6),200,290+150*tan(PI/6),130);
  line(290+150*tan(PI/6),130,258+150*tan(PI/6),130);
  line(290+160*tan(PI/6),280,390+160*tan(PI/6),280);
  line(290+80*tan(PI/6),360,290+180*tan(PI/6),460);
  line(290+180*tan(PI/6),460,350+180*tan(PI/6),460);
  line(290-80*tan(PI/6),360,290-210*tan(PI/6),490);
  line(290-210*tan(PI/6),490,335-190*tan(PI/6),490);
  line(290-160*tan(PI/6),280,140-160*tan(PI/6),280);
  line(140-160*tan(PI/6),280,140-160*tan(PI/6),330);
  line(290-80*tan(PI/6),200,290-210*tan(PI/6),70);
  line(290-210*tan(PI/6),70,240-210*tan(PI/6),70);
  
  stroke(255);
  strokeWeight(0.8);
  line(377,260,447,260);
  line(379,245,447,245);
  line(381,230,447,230);
  
  line(360,370,360+60*cos(PI/3),370+60*sin(PI/3));
  line(360+60*cos(PI/3),370+60*sin(PI/3),400+60*cos(PI/3),370+60*sin(PI/3));
  line(358+60*cos(PI/3),355+60*sin(PI/3),400+60*cos(PI/3),355+60*sin(PI/3));
  line(358+60*cos(PI/3),355+60*sin(PI/3),358+0*cos(PI/3),355+0*sin(PI/3));
  line(356+60*cos(PI/3),340+60*sin(PI/3),400+60*cos(PI/3),340+60*sin(PI/3));
  line(356+60*cos(PI/3),340+60*sin(PI/3),356-5*cos(PI/3),340-5*sin(PI/3));
  
  line(270-210*tan(PI/6),120,200-210*tan(PI/6),120);
  line(270-210*tan(PI/6),120,270-210*tan(PI/6)+28*cos(PI/3),120+28*sin(PI/3));
  line(255-210*tan(PI/6),135,200-210*tan(PI/6),135);
  line(255-210*tan(PI/6),135,255-210*tan(PI/6)+58*cos(PI/3),135+58*sin(PI/3));
  line(200-210*tan(PI/6),150,250-210*tan(PI/6),150);
  line(250-210*tan(PI/6),150,250-210*tan(PI/6)+118*cos(PI/3),150+118*sin(PI/3));
  
  line(190-160*tan(PI/6),300,190-160*tan(PI/6),360);
  line(190-160*tan(PI/6),300,210-160*tan(PI/6),300);
  line(220-160*tan(PI/6),315,220-160*tan(PI/6),385);
  line(220-160*tan(PI/6),315,240-160*tan(PI/6),315);
  line(250-160*tan(PI/6),335,250-160*tan(PI/6),415);
  line(250-160*tan(PI/6),335,310-160*tan(PI/6),335);
  
  line(390-190*tan(PI/6),472,325-190*tan(PI/6),472);
  line(325-190*tan(PI/6),472,325-190*tan(PI/6)+60*cos(PI/3),472-60*sin(PI/3));
  line(390-190*tan(PI/6),457,340-190*tan(PI/6),457);
  line(340-190*tan(PI/6),457,340-190*tan(PI/6)+75*cos(PI/3),457-75*sin(PI/3));
  line(390-190*tan(PI/6),442,355-190*tan(PI/6),442);
  line(355-190*tan(PI/6),442,355-190*tan(PI/6)+85*cos(PI/3),442-85*sin(PI/3));
  
  line(280+80*tan(PI/6),198,280+130*tan(PI/6),148);
  line(280+130*tan(PI/6),148,220+130*tan(PI/6),148);
  line(220+130*tan(PI/6),163,280+115*tan(PI/6),163);
  line(220+130*tan(PI/6),178,280+100*tan(PI/6),178);
  smooth();
  
  fill(255);
  textFont(font);
  textSize(14);
  text("1990年",228+150*tan(PI/6),136);
  text("1995年",512,288);
  text("2000年",484,468);
  text("2005年",255,498);
  text("2010年",140-160*tan(PI/6),350);
  text("2015年",88,76);
  
  textSize(10);
  text("27.1%",468,264);
  text("208.36",468,249);
  text("433.76",468,234);
  
  text("443.9",451,374+60*sin(PI/3));
  text("408.82",451,359+60*sin(PI/3));
  text("23.7%",451,344+60*sin(PI/3));
  
  text("28.7%",52,154);
  text("1822.73",52,124);
  text("1730.81",52,139);
  
  text("23.2%",157,430);
  text("1232.96",95,375);
  text("1229.83",128,400);
  
  text("26.4%",303,446);
  text("920.84",303,461);
  text("936.36",303,476);
  
  text("42.94",275,152);
  text("7.26",275,167);
  text("18.9%",275,182);
  
  rectMode(CENTER);
  noStroke();
  
  fill(245,165,16,200);
  rect(40,440,15,15);
  
  fill(116,51,183);
  rect(40,470,15,15);
  
  fill(22,34,84);
  rect(40,500,15,15);
  
  fill(37,190,223,210);
  rect(810,470,15,15);
  
  fill(244,0,108);
  rect(810,500,15,15);
  
  textSize(12);
  textAlign(CENTER);
  
  noStroke();
  fill(245,165,16,200);
  text("投资总额",80,444);
  
  fill(116,51,183);
  text("房地产",74,474.5);
  
  fill(22,34,84);
  text("占固定资产比重",97,504.5);
  
  fill(37,190,223,210);
  text("住宅竣工建筑面积",873,474);
  
  fill(244,0,108);
  text("竣工率",843,504.5);
  
  noStroke();
  fill(37,190,223,210);
  for(int i=0; i<6; i++){
    arc(750,250,square[i]/8,square[i]/8,radians(240+60*i),radians(300+60*i));
  }
  
  fill(244,0,108);
  arc(750,250,2.1*per2[0],2.1*per2[0],radians(240),radians(300));
  for(int i=1; i<6; i++){
    arc(750,250,3.5*per2[i],3.5*per2[i],radians(240+60*i),radians(300+60*i));
  }
  
  fill(0);
  ellipse(750,250,40,40);
  
  noFill();
  stroke(255);
  strokeWeight(1.5);
  for(int i=0; i<6; i++){
    line(750+20*sin(radians(30+60*i)),250-20*cos(radians(30+60*i)),750+40*sin(radians(30+60*i))+0.4*square[i]/8*sin(radians(30+60*i)),250-40*cos(radians(30+60*i))-0.4*square[i]/8*cos(radians(30+60*i)));
  }
  line(750+40*sin(radians(30+60*4))+0.4*square[4]/8*sin(radians(30+60*4)),250-40*cos(radians(30+60*4))-0.4*square[4]/8*cos(radians(30+60*4)),750+40*sin(radians(30+60*4))+0.4*square[4]/8*sin(radians(30+60*4)),275-40*cos(radians(30+60*4))-0.4*square[4]/8*cos(radians(30+60*4)));
  line(750+40*sin(radians(30+60*2))+0.4*square[2]/8*sin(radians(30+60*2)),250-40*cos(radians(30+60*2))-0.4*square[2]/8*cos(radians(30+60*2)),800+40*sin(radians(30+60*2))+0.4*square[2]/8*sin(radians(30+60*2)),250-40*cos(radians(30+60*2))-0.4*square[2]/8*cos(radians(30+60*2)));
  line(750+40*sin(radians(30+60*3))+0.4*square[3]/8*sin(radians(30+60*3)),250-40*cos(radians(30+60*3))-0.4*square[3]/8*cos(radians(30+60*3)),750+40*sin(radians(30+60*3))+0.55*square[3]/8*sin(radians(30+60*3)),250-40*cos(radians(30+60*3))-0.55*square[3]/8*cos(radians(30+60*3)));
  line(750+40*sin(radians(30+60*3))+0.55*square[3]/8*sin(radians(30+60*3)),250-40*cos(radians(30+60*3))-0.55*square[3]/8*cos(radians(30+60*3)),800+40*sin(radians(30+60*3))+0.55*square[3]/8*sin(radians(30+60*3)),250-40*cos(radians(30+60*3))-0.55*square[3]/8*cos(radians(30+60*3)));
  line(750+40*sin(radians(30+60*5))+0.4*square[5]/8*sin(radians(30+60*5)),250-40*cos(radians(30+60*5))-0.4*square[5]/8*cos(radians(30+60*5)),700+40*sin(radians(30+60*5))+0.4*square[5]/8*sin(radians(30+60*5)),250-40*cos(radians(30+60*5))-0.4*square[5]/8*cos(radians(30+60*5)));
  line(750+40*sin(radians(30+60*0))+0.4*square[0]/8*sin(radians(30+60*0)),250-40*cos(radians(30+60*0))-0.4*square[0]/8*cos(radians(30+60*0)),750+40*sin(radians(30+60*0))+0.5*square[0]/8*sin(radians(30+60*0)),250-40*cos(radians(30+60*0))-0.5*square[0]/8*cos(radians(30+60*0)));
  line(750+40*sin(radians(30+60*0))+0.5*square[0]/8*sin(radians(30+60*0)),250-40*cos(radians(30+60*0))-0.5*square[0]/8*cos(radians(30+60*0)),710+40*sin(radians(30+60*0))+0.5*square[0]/8*sin(radians(30+60*0)),250-40*cos(radians(30+60*0))-0.5*square[0]/8*cos(radians(30+60*0)));
  
  strokeWeight(0.8);
  line(730,232,730-60*cos(PI/3),232-60*sin(PI/3));
  line(730-60*cos(PI/3),232-60*sin(PI/3),660-60*cos(PI/3),232-60*sin(PI/3));
  line(718,229,718-36*cos(PI/3),229-36*sin(PI/3));
  line(718-36*cos(PI/3),229-36*sin(PI/3),648-36*cos(PI/3),229-36*sin(PI/3));
  line(730,268,730-100*cos(PI/3),268+100*sin(PI/3));
  line(730-100*cos(PI/3),268+100*sin(PI/3),660-100*cos(PI/3),268+100*sin(PI/3));
  line(696,308,696-34*cos(PI/3),308+34*sin(PI/3));
  line(696-34*cos(PI/3),308+34*sin(PI/3),626-34*cos(PI/3),308+34*sin(PI/3));
  
  noStroke();
  fill(255);
  textFont(font);
  textSize(14);
  text("1990年",742,148);
  text("1995年",906,257);
  text("2000年",892,365);
  text("2005年",712,458);
  text("2010年",640,295);
  text("2015年",610,151);
  
  fill(255);
  textFont(font);
  textSize(10);
  text("59.0%",750,210);
  text("1339.02",750,182);
  text("34.1%",750,293);
  text("2819.35",750,362);
  text("1746.82",818,215);
  text("35.9%",786,275);
  text("1724.02",826,290);
  text("19.2%",609,184.5);
  text("1617.86",603.5,202);
  text("19.3%",589,358);
  text("1415.44",583,341);
  
  textSize(9);
  text("28.2%",780,235);
}

