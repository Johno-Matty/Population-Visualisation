void textDisplay(){
  fill(255); 
  rect(0,-1401 - height/2,2448,500);
  
  textSize(75);
  fill(0);  
  text("This Is A Graphical Representation Of The Population In The UK",-1200,-1850,5);
  
  fill(255,0,0);
  text("'1' = 1991",-1200,-1750,5);
  pushMatrix();
  translate(0,0,5);rect(-750,-1775,50,50);
  fill(0,255,0);
  popMatrix();
  
  text("'2' = 2001",-1200,-1650,5);
  pushMatrix();
  translate(0,0,5);
  rect(-750,-1675,50,50);
  popMatrix();
  
  fill(0,0,255);
  text("'3' = 2001",-1200,-1550,5);
  pushMatrix();
  translate(0,0,5);
  rect(-750,-1575,50,50);
  popMatrix();
  
  fill(0);
  textSize(50);
  text("For Navigation, use the arrow keys.",-500,-1750,5);
  text("For rotation, click and drag the mouse. - Zoom with the scroll",-500,-1650,5);
  text("'L' = Lower, 'M' = Medium, 'H' = Higher, 'A' = All.",-500,-1550,5);
  
  pushMatrix();
  translate(0,0,2);
  fill(255);
  rect(-824,-1251,800,300);
  popMatrix();
  
  fill(0);
  text("Current Year: "+ displayYear,-1200,-1300,5);
  text("Current Range: "+ displayRange,-1200,-1200,5);
 
}
