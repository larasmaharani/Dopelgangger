Chicken c = new Chicken();
Doppleganger d = new Doppleganger();
Fight f = new Fight();
import processing.sound.*;
SoundFile music;
String x, card1 = "-", card2 = "-";
Boolean left,right,text, hide = false;
int panels = 0;
PImage gameBackground, menuBackground, character, monster, mulaiBackground, character2, monster2, fire, wind, water, earth, cloud, keyboard;
int i = 0 ;
PFont menuFont, regularFont;
String txt;
float y = 0;

void setup(){
 smooth();
 size(1000,550);
 //music = new SoundFile(this, "Assets\\mmsong.mp3");
 
 gameBackground = loadImage("Assets\\mmbg2.png");
 menuBackground = loadImage("Assets\\StartPg2.png");
 mulaiBackground = loadImage("Assets\\mulai.png");
 character = loadImage("Assets\\chicken.png");
 monster = loadImage("Assets\\Monster.png");
 character2 = loadImage("Assets\\chicken2.png");
 monster2 = loadImage("Assets\\Monster2.png");
 fire = loadImage("Assets\\fire.png");
 water = loadImage("Assets\\water.png");
 wind = loadImage("Assets\\wind.png");
 earth = loadImage("Assets\\earth.png");
 cloud = loadImage("Assets\\cloud.png");
 keyboard = loadImage("Assets\\keyboardd.png");
 keyboard.resize(180,80);
 gameBackground.resize(1000,550);
 mulaiBackground.resize(1000,550);
 character2.resize(350,320);
 monster2.resize(370,320);
 water.resize(60,60);
 fire.resize(60,60);
 wind.resize(60,60);
 earth.resize(60,60);
 cloud.resize(200,100);
 menuBackground.resize(1000,550);
 
 menuFont = createFont("No Continue", 31);
 regularFont = createFont("Georgia", 31);
 
 //music.play();
 //music.loop();
 frameRate(60);
 
 y = height;
}

void draw(){
 background(gameBackground);
 switch(panels){
  case 0 : menu(); break;
  case 1 : play();break;
  case 2 : selesai();break;
  case 3 : mulai();break;
  //case 4 : credit();break;
 }
 println(c.x);
}

// ------------------- Tampilan awal game -------------------------------
void menu(){
 println(mouseX,mouseY);
 background(gameBackground);
 println("->menu");
 textFont(menuFont);
 fill(0);
 textSize(60);
 text("DOPPELGANGER?", 26, 73);
 textFont(regularFont);
 textSize(20);
 text("Aren't you?", 26, 98);
 textFont(menuFont);
 textSize(60);
 text("START GAME", 350, 222);
 fill(255);
 textSize(30);
 text("CREDIT", 442, 255);
 
 if( (mouseX >= 352 && mouseY >= 178) && (mouseX<=645 && mouseY <= 217) ){
  fill(0, 77, 0);
  textFont(menuFont);
  textSize(60);
  text("START GAME", 350, 222);
  if(mousePressed){
   panels =  1;
   delay(10);
  }
 } else if((mouseX >= 440 && mouseY >= 232) && (mouseX<=525 && mouseY <= 253)){
    fill(0, 77, 0);
    textSize(30);
    text("CREDIT", 442, 255);
    
    fill(255,255,255);
    rect(298, 286, 400, 200);
    
    fill(0);
    textSize(20);
    txt = "Kelompok 5";
    text(txt, 322, 322);
    
    txt = "Projek Akhir Grafika Komputer";
    text(txt, 322, 342);
    
    txt = "Anggota : ";
    text(txt, 322, 382);
    
    fill(230, 0, 0);
    rect(322,385,80,3);
    
    fill(0);
    txt = "1. Fildzah Marissa Rusialdi (2107411030)";
    text(txt, 322, 412);
    
    txt = "2. Adelia Citra Utami (2107411027)";
    text(txt, 322, 432);
    
    txt = "3. Larasati Maharani (2107411011)";
    text(txt, 322, 452);
   
 } 
}

void keyPressed(){
 if (keyCode == 10 && panels == 3){
   i++;
 }
}

// ------------------- Tampilan game mulai -------------------------------
void play(){
 f.check = false;
 println("->play");
 x = "";
 left = false;
 right = false;
 
   background(gameBackground);
   c.display();
   fill(0);
   if (keyPressed == true) {
     switch(keyCode){
       case 37:
         left = true;
         break;
       case 39:
         right = true;
         break;
     }
    }
   c.move();
   c.cloudMove();
   if(c.check == true){
     panels = 3;
   }

}

void gameGUI() {
  noFill(); 
}

// ------------------- Tampilan lawan monster -------------------------------
void mulai(){
  println("->Lawan Monster");
  background(mulaiBackground);
 f.display();
 if(f.check == true){
  panels = 2; 
 }
}

// ------------------- Tampilan menang/kalah -------------------------------
void selesai(){
      println("->Selesai");
      textFont(menuFont);
      background(mulaiBackground);
      textSize(33);
      if(panels == 2 && f.life1 == 0){
        x = "YOU'RE THE DOPPELGANGER, RIGHT!?!?";
        fill(230, 0, 0);
        text(x,283,256);
        
        textFont(regularFont);
        textSize(20);
        x = "TRY AGAIN";
        fill(255,255,255);
        text(x,470,286);
        
          if ((mouseX >= 470 && mouseY >= 271) && (mouseX<=577 && mouseY <= 289)){
          textFont(regularFont);
          textSize(20);
          x = "TRY AGAIN";
          fill(128);
          text(x,470,286);
          
          if(mousePressed) {
           hide = true;
           panels = 0;
           delay(10);
           f.check = false;
           f.resetLife();
          }
        }
        
      } else if (panels == 2 && f.life2 == 0){
        x = "YOU'RE THE REAL CHICKEN, CONGRATS!";
        fill(0, 77, 0);
        text(x,283,256);
        
        textFont(regularFont);
        textSize(20);
        x = "MAIN MENU";
        fill(255,255,255);
        text(x,470,286);
        
          if((mouseX >= 467 && mouseY >= 269) && (mouseX<=592 && mouseY <= 284)){
          textFont(regularFont);
          textSize(20);
          x = "MAIN MENU";
          fill(128);
          text(x,470,286);
          
          if(mousePressed) {
           hide = true;
           panels = 0;
           delay(10);
           f.resetLife();
           f.check = false;
        }
      }
    }
 }

// ------------------- Check Kartu ------------------------------------------
void mousePressed(){
 //println(mouseX,mouseY); 
  if(panels == 3){
      if((mouseX >= 92 && mouseY >= 105) && (mouseX<=146 && mouseY <= 160)){
       card1 = "Water";
       f.suitOpponend();
       f.checklife();
    } else if ((mouseX >= 172 && mouseY >= 105) && (mouseX<=228 && mouseY <= 160)) {
       card1 = "Fire";
       f.suitOpponend();
       f.checklife();
    } else if ((mouseX >= 252 && mouseY >= 105) && (mouseX<=308 && mouseY <= 160)) {
       card1 = "Wind";
       f.suitOpponend();
       f.checklife();
    } else if ((mouseX >= 332 && mouseY >= 105) && (mouseX<=388 && mouseY <= 160)) {
       card1 = "Earth";
       f.suitOpponend();
       f.checklife();
    }  
  } 
}

// ------------------- Credit Text ------------------------------------------
//void credit(){
  
//   if( y == -300){
//    stroke(2);
//    fill(127);
//    rect(413,286, 100,20); 
//   }
  
//   println(mouseX,mouseY);
//   background(0);
//   translate(width/2, height/2);
//   fill(255);
//   textSize(width*0.04);
//   textAlign(CENTER);
//   rotateX(PI/4);
//   float w =  - width*0.6;
//   text(txt, -w/2, y, w, height*10);
//   y--;
  
//}
