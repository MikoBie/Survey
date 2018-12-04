String myText = "";
int x = 640;
int y = 750;
int w = 30;
int h = 15;

void Metryczka() {
  currentScreen=1;
  background(255);
  fill (0,0,0);
  textSize(30);
  textAlign(CENTER);
  text("Metryczka",width/2,50);
  textAlign(LEFT);
  textSize(18);
  text("Płeć:", 100,200);
  text("Dominująca ręka:",100,230);
  text("Wiek:",100,260);
  text("Kierunek studiów:", 100, 290);
  textbox(270,285);
  overRect();
}

void overRect()  {
  if (mouseX >= x-w && mouseX <= x+w &&  mouseY >= y-h && mouseY <= y+h) {   
    rectMode(CENTER);
    fill(255);
    rect(x,y,w,h,7);
  } else {
    rectMode(CENTER);
    fill(0);
    rect(x,y,w,h,7);
  }
}

void textbox(int x_text, int y_text){
  rectMode(CORNER);
  fill(255);
  rect(x_text,y_text-18,200,28);
  fill(0,0,0);
  text(myText, x_text+5, y_text+5);
  if (write_text && keyPressed==false){
    textline.display(textWidth(myText));
  }
}





class TextLine {
  TextLine (){
  }
  void display(float place) {
    if (millis()%1000>0&&millis()%1000<500)
    line(275+place,275,275+place,290);
  }
}