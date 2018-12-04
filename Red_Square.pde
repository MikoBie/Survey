int last_change = 0; // zmienna służaca do zapisywania czasu, który minął od ostatniego wyświetlenia. Na samym początku jest 0 więc pierwsze wyświetlenie jest po czasie space 
boolean first_key_pressed=false; // zmienna, która zmienia się na true gdy pierwszy raz zostanie wciśnięty klawisz
int key_converter=9; // zmienna pomocnicza, w której zapisuje numer klawisza. 46 zamieniam na 0, a 47 na 1.
int[] memory = {9,9,9,9,9,9,9};// tablica do zapisywania naciśniętych klawiszy. Jest ustawione 7 jeśli chce się, żeby mniej lub więcej wyświetlało to trzeba pozamieniać ręsznie w kodzie. Plus trzeba wypełnić tablicę 9.




void Red_Square(){
  background(255);
  textSize(30);
  textAlign(CENTER);
  // ustalam kolor tła, musi być tutaj bo musi się odświeżać i przykrywać kwadrat
  if (keyPressed==true && (key==46 || key==47)){  // zapisuje naciśnięty klawisz (tylko 46 i 47) do pliku. Na końcu musi być keyPressed=false bo inaczej będzie zapamiętany, że jest naciśnięty
    if (key==46) key_converter=0; //zamieniam klawisz 46 na 0.
    if (key==47) key_converter=1; // zamienia klawisz 47 na 1.
    TableRow newRow = table.addRow();
    newRow.setInt("id", table.lastRowIndex());
    newRow.setInt("key",key_converter);
    keyReleased(); // funkcja, która służy do zapisywania naciśniętych klwaiszy w tablicy i przesuwania ich przy kolejnych naciśnięciach.
    keyPressed=false; 
  }
  fill(0,0,0); // ustawienie koloru tekstu
  if (history==true){//kontrola czy historia ma się wyświetlać czy nie
    if (memory[6]!=9) text(memory[6],width/2,height/9); //wyświetla pierwsze 0 albo 1
    if (memory[5]!=9) text(memory[5],(width/2)-60,height/9); //wyświetla drugie 0 albo 1
    if (memory[4]!=9) text(memory[4],(width/2)-120,height/9);//wyświetla trzecie 0 albo 1
    if (memory[3]!=9) text(memory[3],(width/2)-180,height/9);//wyświetla czwarte 0 albo 1
    if (memory[2]!=9) text(memory[2],(width/2)-240,height/9);//wyświetla piąte 0 albo 1
    if (memory[1]!=9) text(memory[1],(width/2)-300,height/9);//wyświetla szóste 0 albo 1
    if (memory[0]!=9) text(memory[0],(width/2)-360,height/9);//wyświetla siódme 0 albo 1
  }
  if (millis()-last_change>space){ // wyświetla kwadrat od początku trwania programu minęło 
    square.display();
    if (millis()-last_change>space+exposition_length) { // reguluje jak długo się kwadrat będzie wyświetlał
      last_change=millis();
    }
  }
  if (millis()-start_red_square>time) {
    saveTable(table,"los_chem_zera_"+ month()+"_" + day()+"_" + hour()+"_" + minute()+"_" + second() +".csv");//zapisuje tabelę do pliku, który się nazywa od minut
    println(millis()-start_red_square);
    currentScreen=3;
  }
}

void keyReleased(){ // deklaracja funckji do przechowywania ostatnich siedmiu naciśniętych klawiszy oraz do przesuwania ich po tablicy
  if (first_key_pressed==true && keyPressed==true){
    memory[0]=memory[1];
    memory[1]=memory[2];
    memory[2]=memory[3];
    memory[3]=memory[4];
    memory[4]=memory[5];
    memory[5]=memory[6];
  }
  memory[6]=key_converter;
  first_key_pressed=true;
}

class Square { //deklaracja klasy do wyświetlania czerwonego kwadratu
  Square (){
  }
  void display() {
    rectMode(CENTER);
    fill(256,0,0);
    rect(width/2,height/2,width/2-10,height/2-10);
  }
}