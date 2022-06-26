void bars() {
    for (TableRow row : data.rows()){

    String raw1991 = row.getString("1991").replace(",","").replace("...","0");
    int value1991 = Integer.parseInt(raw1991);
    
    String raw2001 = row.getString("2001").replace(",","").replace("...","0");
    int value2001 = Integer.parseInt(raw2001);

    String raw2011 = row.getString("2011").replace(",","").replace("...","0");
    int value2011 = Integer.parseInt(raw2011);
   
    int locX = row.getInt("xPos");
    int locY = row.getInt("yPos");
    
    //standardising data to make box heights more readable
    int standValue1991 = (value1991 / accum1991) * 80; //<>//
    int standValue2001 = (value2001 / accum2001) * 80; //<>//
    int standValue2011 = (value2011 / accum2011) * 80; //<>//
   
   // 1991: Low, Medium, High & All (RED)
   if (year == 1){ 
     
   if (range == 1 && standValue1991 < 200){
      generateBar(standValue1991,20,locX, locY,255,0,0);
     }
    else if(range == 2 && standValue1991 > 200 && standValue2001 < 350){
      generateBar(standValue1991,20,locX,locY,255,0,0);
    }
    else if(range == 3 && standValue1991 > 350){
      generateBar(standValue1991,20,locX,locY,255,0,0);

    }
    else if (range == 0){
    generateBar(standValue1991,20,locX, locY,255,0,0);
      }
    }
   // 2001: Low, Medium, High & All (GREEN)
   else if (year == 2){
      if (range == 1 && standValue2001 < 200){
      generateBar(standValue2001,20,locX, locY,0,255,0);
     }
      
    else if(range == 2 && standValue2001 > 200 & standValue2001 < 350){
      generateBar(standValue2001,20,locX,locY,0,255,0);
    }
    
    else if(range == 3 && standValue2001 > 350){
      generateBar(standValue2001,20,locX,locY,0,255,0);
    }
    
    else if (range == 0){
      generateBar(standValue2001,20,locX, locY,0,255,0);
      }
   }
   //2011: Low, Medium, High & All (BLUE)
   else if (year == 3){
     if (range == 1 && standValue2011 < 200){
      generateBar(standValue2011,20,locX, locY,0,0,255);
     }
      
    else if(range == 2 && standValue2011 > 200 & standValue2011 < 350){
      generateBar(standValue2011,20,locX,locY,0,0,255);
    }
    
    else if(range == 3 && standValue2011 > 350){
      generateBar(standValue2011,20,locX,locY,0,0,255);
    }
    
    else if (range == 0){
      generateBar(standValue2011,20,locX, locY,0,0,255);
      }
   }

   }
 }
 
  //funtion used for creating the bars
  void generateBar(int h, int w, int x, int y,int r,int g, int b){
  float mappedPop = map(h,0,1,0,1);
  fill(r,g,b,mappedPop);
  
  pushMatrix();
  translate(x,y,h/2);
  box(w,w,h);
  popMatrix();
}
