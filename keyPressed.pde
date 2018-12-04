int start_red_square; //służy do tego, żeby kwadrat zaczynał liczyć czas nie od początku badania, a od początku wyświetlania kwadratu. Tzn. żeby to nie badanie trwało 10 minut, a wyświetlanie się kwadratu.

void keyPressed() {
  if (key == ' ' && currentScreen == 0){key=0;currentScreen=1;}
  if (key == ' ' && currentScreen == 1){start_red_square=millis();currentScreen=2;}
  if (keyCode == BACKSPACE && write_text == true) {
    if (myText.length() > 0) {
      myText = myText.substring(0, myText.length()-1);
    }
  } else if (keyCode == DELETE &&  write_text == true) {
    myText = "";
  } else if (key == ENTER || key == RETURN){
    key=0;
  } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT && write_text == true && textWidth(myText)<185) {
    myText = myText + key;
  }else if (key == 'q' && currentScreen ==3){
    exit();
  }
  
}