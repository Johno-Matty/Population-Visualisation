void mouseDragged(){
  float speed = 0.01;
  rotateX += (pmouseY - mouseY) * speed;
  rotateY += (mouseX - pmouseX) * speed;
}

void mouseWheel(MouseEvent event){
  float scroll = event.getCount();
  zoom += scroll;
}

void mouseClicked(MouseEvent event){
  if (event.getCount() == 2 && zoomed == false){
    zoomIn();
    zoomed = true;
  }
  else if (event.getCount() == 2 && zoomed == true){
    zoomOut();
    zoomed = false;
  }
}

void zoomIn(){
  zoom -= 1;
}

void zoomOut(){
  zoom += 1;
}

void mousePressed(){
  
}

void keyPressed(){
  if (key==CODED){
    if(keyCode == UP){
      cameraY-=100;
    } else if(keyCode == DOWN){
      cameraY+=100;
    } else if(keyCode == LEFT){
      cameraX-=100;
    } else if(keyCode == RIGHT){
      cameraX+=100;
    }
  }
  
  if(keyPressed){
    if(key == '0'){
      year = 0;
      displayYear = "No Year Selected";
      return;
    }    
    else if(key == '1'){
      year = 1;
      displayYear = "1991";
      return;
    }
    else if(key == '2'){
      year = 2;
      displayYear = "2001";

      return;
    }
    else if(key == '3'){
      year = 3;
      displayYear = "2011";
      return;
    }
    else if(key == 'l'){
      range = 1;
      displayRange = "Lower";
      return;
    }
    else if(key == 'm'){
      range = 2;
      displayRange = "Medium";
      return;
    }    
    else if(key == 'h'){
      range = 3;
      displayRange = "Higher";
      return;
    }
    else if(key == 'a'){
      range = 0;
      displayRange = "No Filter";
      return;
    }
    }
  }
