void Instruction() {
  currentScreen=0;
  background(255);
  textSize(30);
  textAlign(LEFT);
  fill(0,0,0);
  String[] Instruction = loadStrings("Instrukcja.txt");
  text(Instruction[0],10, height/3,width-20,300);
  textAlign(CENTER);
  text("Naciśnij spację aby przejść dalej.", 0, height-150,width-30,300);
  
}