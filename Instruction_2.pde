void Instruction_2() {
  rectMode(CORNER);
  currentScreen=1;
  background(255);
  textSize(30);
  textAlign(LEFT);
  fill(0,0,0);
  String[] Instruction = loadStrings("Instrukcja_2_zera.txt");
  text(Instruction[0],10, height/6,width-20,500);
  textAlign(CENTER);
  text("Naciśnij spację aby rozpocząć badanie.", 0, height-150,width-30,300);
  
}