import processing.net.*;

Square square; // klasa, która służy do rysownaia czerwonego kwadratu
TextLine textline;
Table table; // tabela do której będziemy zapisywać dane

//suma space i exposition_length powinno być równe 2 sekundom w warunku przerwy dwu sekundowej
int space = 1250; // zmienna mówiąca jaki ma być odstęp między wyświetleniami kwadratu w milisekundach
int exposition_length = 750; // zmienna mówiąca o tym jak długo ma się wyświetlać kwadrat w milisekundach
int time=600000; // zmienna mówiąca to tym jak długo ma trwać badanie w milisekudach
boolean history=false; // kontrola czy historia ma się wyświetlać czy nie
int currentScreen;



void setup() {// w setupie deklaruję wielkość okna plus inicjuje klasę square oraz tabelę i kolumny id oraz key. Deklaruje też wielkość czcionki oraz umiejscowienie
  fullScreen();
  square = new Square();
  table = new Table();
  //checkbox_plec = new CheckBox();
  textline = new TextLine();
  table.addColumn("id");
  table.addColumn("key");
}

void draw() {
  switch(currentScreen) {
    case 0: Instruction(); break;
    //case 1: Metryczka(); break;
    case 1: Instruction_2(); break;
    case 2: Red_Square(); break;
    case 3: Ending(); break;  
  }
}