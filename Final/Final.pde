PImage ukjpg;
Table data;
PShape map;
float rotateX = 0;
float rotateY = 0;
float zoom = 5;
float cameraX = 0;
float cameraY = -1000;
boolean zoomed = false;
int accum1991, accum2001, accum2011, range, year;
String displayYear = "No Year Selected";
String displayRange = "No Filter";

void setup(){
  size(800,600,P3D);
  //loading image & table data
  data = loadTable("Data.csv","header");
  ukjpg = loadImage("uk-admin.jpg");
  rectMode(CENTER);
  
  //dimensions of picture x 2448 y 2802
  map = createShape(RECT,0,0,2448,2802);
  map.setTexture(ukjpg);
  
  //obtaing sum of population for each year
  for (TableRow row : data.rows()){
    
    String raw1991 = row.getString("1991").replace(",","").replace("...","0");
    int value1991 = Integer.parseInt(raw1991);
    accum1991 =+ value1991;
  
    String raw2001 = row.getString("2001").replace(",","").replace("...","0");
    int value2001 = Integer.parseInt(raw2001);
    accum2001 =+ value2001;
    
    String raw2011 = row.getString("2011").replace(",","").replace("...","0");
    int value2011 = Integer.parseInt(raw2011); 
    accum2011 =+ value2011;
}
}
void draw(){
  background(168,205,234);
  rotateX(rotateX);
  rotateY(rotateY);
  
  //text HUD
  textDisplay();
  
  fill(0,0,0);
  shape(map);
  
  //translating to top left of image to ensure bars are correctly located
  translate(-1224,-1401);
  bars();
  
  camera(cameraX, cameraY, (height*0.5)/tan(PI/6)*zoom, cameraX, cameraY,0,0,1,0);

}
