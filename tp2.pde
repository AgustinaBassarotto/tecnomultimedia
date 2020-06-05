PImage mar ;
PFont fuente ;
PImage barco;
int posXimg=0;
int posYimg=0;
int posXtext= 350; //TITULO
int posYtext= 350;//TITULO
int pyPRIN= 730; //CAST
int pySECUN= 1500;//CAST
int pyMUSIC=2450;//MUSICA
int pyDIRE=3200; //DIRECCION
void setup(){
 size(700,700);
 mar= loadImage("mar.jpg");
 fuente= loadFont("fuente.vlw"); //TITULO
barco= loadImage ("barco2.jpg");

 }

void draw () {
  
  background(barco);
image(mar,posXimg,posYimg);
textAlign (CENTER);
fill(255);
 textFont (fuente, 150); //TITULO
  text ("TITANIC", posXtext, posYtext); 
 
  textFont (fuente,55);
   fill(255,255,0);
    text ( " CAST\nLeonardo DiCaprio como Jack Dawson \nKate Winslet como Rose DeWitt Bukater", 350, pyPRIN);
  
    text ("Billy Zane como Caledon Hockley \n Frances Fisher como Ruth DeWitt Bukater \n Danny Nucci como Fabrizio Di Rossi \n Bill Paxton como Brock Lovett \n David Warner como Lovejoy  \n Christopher Smith como Louis \n Jason Barry como Tommy Ryan", 350, pySECUN);
 text ("Music composed by \n James Horner", 350, pyMUSIC);
 text ("A film by \n James Cameron",350, pyDIRE);
}
 void mouseClicked () {
 
   posXimg+=800;
   posYimg+=800;
   posXtext+=500;
   posYtext+=500; 
   
 } 
 void keyPressed () {
 
   pyPRIN-=4;
   pySECUN-=4;
   pyMUSIC-=4;
   pyDIRE-=4;
 }
  
