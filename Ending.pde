void Ending() {
  currentScreen=3;
  rectMode(CORNER);
  background(255);
  textSize(30);
  textAlign(CENTER);
  fill(0,0,0);
  String[] Ending = loadStrings("Ending.txt");
  text(Ending[0],10,height/3,width-20,300);
}