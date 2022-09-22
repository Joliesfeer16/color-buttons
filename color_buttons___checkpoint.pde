//TACTILE AND CLICKABLE BUTTON
color cream   = #eaac8b;
color pink    = #e56b6f;
color purple  = #6d597a;
color navy    = #355070;
color white   = #ffffff;
color black   = #000000;
color lightPi = #fcd5ce;
color lightPu = #d1b3c4;
color bkg     = cream;

void setup(){
  size(800,600);
}

void draw(){
  
  background(bkg);

  strokeWeight(6);
  
  tactileRect(200,250,200,100, pink);
  tactileCircle(550,300,100, purple);

  
}

void mousePressed(){ // when you press on button, something happens
  if (mouseTouchingRect(200,250,200,100)){ //if click on rect button, bkg is black
    bkg = lightPi;
  } 
  
  if(mouseTouchingCircle(550,300,50)){
    bkg= lightPu;
  }
}

void tactileRect(int x, int y, int w, int h, color f){
  fill(f);
  stroke(f);
  if (mouseTouchingRect(x,y,w,h)){ //if the mouse hover over button, stroke is white
    stroke(lightPi);
  } else { //if mouse is not on button stroke is black
    stroke(f);
  }
  rect(x,y,w,h);
}

void tactileCircle(int x, int y, int r, color f){
  fill(f);
  stroke(f);
  if(mouseTouchingCircle(x, y, r)){
    stroke(lightPu);
  } else {
    stroke(f);
  }
  circle(x,y,r);
}

boolean mouseTouchingRect (int x, int y, int w, int h){ //returns an answer that is true or false
   if (mouseX> x && mouseX< x+w && mouseY> y && mouseY< y+h) {
     return true; //if the if statement is true, then whatever the if statement is asking will happen
   } else {
     return false;
   }
}

boolean mouseTouchingCircle (int x, int y, int r){ //returns an answer that is true or false
  if(dist(x,y,mouseX,mouseY)<r){
   return true;
  } else{
    return false;
  }
}


//-----------NOTES:

 //fill(122,33,10);
  //if (mouseTouchingRect(100,100,200,100)){ //if the mouse hover over button, stroke is white
  //  stroke(255);
  //} else { //if mouse is not on button stroke is black
  //  stroke(0);
  //}

//void mousePressed(){ //will only draw when the mouse is pressed, no drag
//void mouseReleased(){ //when you click and release
//void mouseDragged(){ //as you drag the mouse, it will draw
