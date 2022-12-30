class Chicken {
  float x,y,a,b;
  String z, yes, no;
  boolean check, learn, keyB = true;
  
 Chicken(){
   x = width-200;
   y = height+20;
   a = 0;
   b = 20;
 }
 
 void display(){
   background(gameBackground);
   //println(mouseX, mouseY);
   image(character,x-100,y);
   image(cloud,a,b);
   
   if((mouseX >= 43 && mouseY >= 21) && (mouseX<=157 && mouseY <= 71)){
     fill(0);
     rect(43,21,50,10);
     panels = 0;
   }
   
   if(keyB == true){
      if(x >= -80 && x <= 120){
       textFont(menuFont);
       textSize(20);
       z = "Try to move, using this keypad :";
       text(z, 575, 214);
       image(keyboard,625,236);
     }
     if(x >= 130){
      keyB = false; 
     }
   }
 }
 
 void move(){
   
   if(right){
     x = x + 5;
     println(x);
   }
   if(left){
     x = x - 5;
     println(x);
   }
   if((!left && !right) || (left && right)){
     x = x + 0;
   }
   checkBound();
 }
 
 void checkBound(){
  if(x > 400){
    right = false;
    x = 400;
  }
  
  if(x < 0-80){
    left = false;
    x = 0-80;
  }
  
  if(x > 180){
   d.display();
  }
  
  if(x >= 390){
   x = 390;
   left = false;
   
   
   check = false;
   
   if (learn == false){
     fill(255,255,255);
     stroke(2);
     rect(228, 285, 210, 110);
     
     textFont(regularFont);
     textSize(20);
     fill(0, 77, 0);
     z = "*He looks like me*";
     text(z, 241, 311);
     fill(0);
     z = "Try to assault him?";
     text(z, 241, 331);
     rect(241, 334, 170, 1);
    
     
     yes = "Yes";
     no = "No (learning)";
     if(dist(mouseX, mouseY, 261, 352) < 13){
       fill(255, 0, 0);
       text(">Yes", 242, 358);
       fill(0);
       text(no, 245, 385); 
       if(mousePressed){
         check = true;
         delay(10);
       }
     } 
     else if(dist(mouseX, mouseY, 304, 381) < 50){
       fill(255, 0, 0);
       text(">No (learning)", 242, 385);
       fill(0);
       text(yes, 245, 358);
       if(mousePressed){
         check = false;
         learn = true;
       }
     }
     else {
       fill(0);
       text(yes,  245, 358);
       text(no, 245, 385); 
     }
   } else if (learn == true){
      fill(0);
      stroke(10);
      rect(0, 0, 460, 550);
      fill(255,255,255);
      rect(458,0,3,550);
      
      textFont(menuFont);
      fill(255);
      z = "SUPERPOWER RULES";
      text(z, 95, 55);
      rect(74, 65, 300, 5);
      
      textSize(20);
      z = "You will go against the ";
      text(z, 75, 105);
      
      fill(255, 0, 0);
      z = "Doppelganger";
      text(z, 283, 105);
      
      fill(255);
      z = "to prove that you are the real";
      text(z, 75, 130);
      
      fill(0, 77, 0);
      z = "chicken.";
      text(z, 348, 130);
      
      fill(255);
      z = "However, the rules are : ";
      text(z, 75, 175);
      
      z = "- Fire vs Earth = Earth";
      text(z, 75, 200);
      
      z = "- Water vs Fire = Water";
      text(z, 75, 225);
      
      z = "- Earth vs Wind = Wind";
      text(z, 75, 250);
      
      z = "- Wind vs Water = Water";
      text(z, 75, 275);
      
      z = "- Water vs Earth = Water";
      text(z, 75, 300);
      
      z = "- Wind vs Fire = Fire";
      text(z, 75, 325);
      
      z = "Make sure to win the match!";
      text(z, 75, 365);
      
      z = "Go chicken go!";
      text(z, 75, 385);
      
      rect(74, 417, 300, 50);
      fill(255, 0, 0);
      z = "Understand";
      text(z, 185, 448);
      
      if((mouseX >= 74 && mouseY >= 417) && (mouseX<=372 && mouseY <= 466)) {
        fill(0);
        rect(74, 417, 300, 50);
        fill(255,255,255);
        z = "Understand";
        text(z, 185, 448);
        if(mousePressed){
         learn = false; 
        }
      }
    }
  }
 }
 
 void attack(){
   fill(255);
   z = "Life : 100";
   text(z, 48, 36);
 }
 
 void cloudMove(){
   if(b == 20) 
    a ++;
   if(b == 30) 
    a --;
   if(a == 1000) 
    b ++;
   if(a == -200) 
    b --;
 }
  
}
