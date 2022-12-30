class Fight{
  float x;
  float y;
  String z, yes, no, hasil;
  boolean check;
  char card;
  float life1 = 100, life2 = 100;
  String[] card3 = {"Wind", "Fire", "Water", "Earth"};
  
 Fight(){
   x = width-120;
   y = height+65;
 }
 
 void display(){
   //music.play();
 
   fill(128);
   image(character2,x+60,y+65);
   image(monster2,x+610,y+65);
   //rect(x,y,64,64);
   
   textStart();
   checkRate();
 }
 
 void textStart(){
   //println(i);
   textFont(menuFont);
   if(i == 0) {
     textSize(40);
     z = "You're Fake!";
     fill(255, 255, 255);
     text(z, 92, 133);
     
     textSize(20);
     z = "Press Enter....";
     fill(134, 121, 121);
     text(z, 99, 153);
   } else if (i == 1){
     z = "";
     text(z, 92, 93);
     textSize(40);
     fill(255, 0, 0); 
     z = "No, I'm the real one!";
     text(z, 604, 133);
     
     textSize(20);
     z = "Press Enter....";
     fill(134, 121, 121);
     text(z, 604, 153);
   } else if (i == 2){
     z = "";
     text(z, 92, 93);
     textSize(40);
     z = "Then, Lets Proof it!";
     fill(255, 255, 255);
     text(z, 92, 133);
     
     textSize(20);
     z = "Press Enter....";
     fill(134, 121, 121);
     text(z, 99, 153);
   } else if (i >= 3){
     suitHeader();  
     //suitMain();
     textSize(40);
       z = "My Life : " + life1;
       fill(255, 255, 255);
       text(z, 92, 62);
       
       fill(255, 0, 0);
       z = "Opponent Life : " + life2;
       text(z, 604, 62);
     
     fill(255, 255, 255);
     rect(79,102,890,5);
     
     fill(255, 0, 0);
     z = "VS";
     text(z, 484, 403);
   }
 }
 
 void suitHeader(){
     z = "My Power : " + card1;
     fill(255, 255, 255);
     text(z, 92, 90);
     
     fill(255, 0, 0);
     z = "Opponent Power : " + card2;
     text(z, 604, 90);
     
     fill(255, 255, 255);
       rect(92,125,60,60, 25);
       image(water, 94, 124);
       
       rect(172,125,60,60, 25);
       image(fire, 174, 124);
       
       rect(252,125,60,60, 25);
       image(wind, 254, 124);
       
       rect(332,125,60,60, 25);
       image(earth, 334, 124);
     
     if((mouseX >= 92 && mouseY >= 125) && (mouseX<=146 && mouseY <= 180)) {
       fill(81, 106, 39);
       rect(92,125,60,60, 25);
       image(water, 94, 124);
       
       textSize(20);
       z = "Water";
       fill(255, 255, 255);
       text(z, 94, 212);
     } else if ((mouseX >= 172 && mouseY >= 125) && (mouseX<=228 && mouseY <= 180)) {
       fill(81, 106, 39);
       rect(172,125,60,60, 25);
       image(fire, 174, 124);
       
       textSize(20);
       z = "Fire";
       fill(255, 255, 255);
       text(z, 182, 212);
     } else if ((mouseX >= 252 && mouseY >= 125) && (mouseX<=308 && mouseY <= 180)) {
       fill(81, 106, 39);
       rect(252,125,60,60, 25);
       image(wind, 254, 124);
       
       textSize(20);
       z = "Wind";
       fill(255, 255, 255);
       text(z, 261, 212);
     } else if ((mouseX >= 332 && mouseY >= 125) && (mouseX<=388 && mouseY <= 180)) {
       fill(81, 106, 39);
       rect(332,125,60,60, 25);
       image(earth, 334, 124);
       
       textSize(20);
       z = "Earth";
       fill(255, 255, 255);
       text(z, 334, 212);
     }
 }
 
 void suitOpponend(){
   int index = int(random(card3.length));
   card2 = card3[index];
   println(check);
 }
 
 void checklife(){
    if((card1 == "Water" && card2 == "Water") || (card1 == "Fire" && card2 == "Fire") || (card1 == "Wind" && card2 == "Wind") || (card1 == "Earth" && card2 == "Earth") ){
        life1 = life1 + 0;
        life2 = life2 + 0;
        }
    if((card1 == "Fire" && card2 == "Earth") || (card1 == "Water" && card2 == "Fire") || (card1 == "Earth" && card2 == "Wind") || (card1 == "Wind" && card2 == "Water")
    || (card1 == "Water" && card2 == "Earth") || (card1 == "Wind" && card2 == "Fire")){
          life2 = life2 - 25;
        }
    if((card1 == "Earth" && card2 == "Fire") || (card1 == "Fire" && card2 == "Water") || (card1 == "Wind" && card2 == "Earth") || (card1 == "Water" && card2 == "Wind")
    || (card1 == "Earth" && card2 == "Water") || (card1 == "Fire" && card2 == "Wind")){
          life1 = life1 - 25;
        }
        
        life1 = life1 + 0;
        life2 = life2 + 0; 
    }   
    
  void checkRate(){
    if(life1 == 0 || life2 == 0){
     check = true; 
    }
  }
  
  void resetLife(){
   life1 = 100;
   life2 = 100;
   c.learn = false;
   i = 0;
   c.x = -80;
   c.check = false;
   c.keyB = true;
  }
}
