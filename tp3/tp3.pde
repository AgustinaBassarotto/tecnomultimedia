PImage portada;
PImage g;
PImage creditos;
PImage cocinando;
PImage bosquelluvioso;
PImage cueva;
PImage medianoche;
PImage lobo;
PImage cazador;
PImage casaabuela;
PImage vecina;
PImage regalo;
PImage paraguas;
PImage asus;
PImage camioneta;
PFont f;
int posicion;
int pantalla;
int tam;

void setup (){
 size (800,600 );
 portada=loadImage ("PORTADA.jpg");
g=loadImage("g.jpg");
 creditos=loadImage ("creditos.png"); 
 cocinando=loadImage("cocinando.jpg");
 bosquelluvioso=loadImage ("bosquelluvioso.jpg");
 cueva=loadImage ("cueva.jpg");
 medianoche=loadImage ("medianoche.jpg");
 lobo=loadImage("lobo.png");
 cazador=loadImage("cazador.png");
 casaabuela=loadImage("casaabuela.png");
 vecina=loadImage ("vecina.png");
 regalo=loadImage("regalo.jpg");
 paraguas=loadImage("paraguas.png");
 asus=loadImage("asus.jpg");
camioneta=loadImage("camioneta.png");
f=loadFont("f.vlw");
 posicion=0;
  pantalla=0;
  tam=width/7;
  textFont(f,30);
}
 
 void draw(){
   pantallas();
   println(pantalla);

 }
 
 void pantallas() {
   if (pantalla==0) {
  image (portada, posicion,posicion);
     fill(0, 100);
     rectMode (CENTER);
     rect( posicion+width/2, posicion+height/2-20, 500,80);//TITULO
 fill(255);
  textSize (50);
  textAlign (CENTER);
  text ("CAPERUCITA ROJA", posicion+width/2, posicion+height/2); //TITULO  
 fill(0, 180);
  rect (posicion+150,posicion+550,200,75); //INICIO
   rect (posicion+650,posicion+550, 200,75);//CREDITOS
    fill(255);
    textSize(35);
     text ("INICIO",posicion+150,posicion+565);
     text( "CRÈDITOS",posicion+647,posicion+565);  
   }
    else if (pantalla==1 ) {
       rectMode (CENTER);
         textAlign (CENTER);
  
    image (g,0,-50,800,800);
    fill (0);
    textSize(20);
    text ("CAPERUCITA ROJA VISITARÁ A SU ABUELA POR SU CUMPLEAÑOS,\nELLA VIVE CRUAZANDO EL BOSQUE.\nELIGE EL REGALO QUE QUIERAS LLEVARLE", width/2, height/8);
     rect (150,550,200,75); 
   rect (650,550, 200,75);
   fill(255);
    text ("GALLETAS",150,565);
     text( "FRUTAS",647,565);   
   }
        else if (pantalla==2 ) {
        image (cocinando, 0,0,800,600);
       rectMode (CORNER);
         textAlign (CENTER);
       fill(255);
        rect (100,50,600,50); //rectangulo central
        fill (255,0,0);
       // rect (20,50,50,50,7); //esquina izquierda
        rect (730,50,50,50,7);//esquina derecha
         fill(0);
       textSize(20);
        text( "CAPERUCITA PREPARA LAS GALLETAS PARA SU ABUELA", 400, 85);
    fill(255,255,0);
    textSize(30);
    fill(255);
     //  text ("VOLVER", 45,85); //volver
       text ("->", 755,85); //siguiente
        }
        else if (pantalla==3){
          image(bosquelluvioso,0,0);
          fill(0,140);
          rect(60,20, 670,80);
          textAlign (CORNER);
          rectMode (CORNER);
          fill(255);
          textSize(20);
      text("CUANDO TERMINA LAS GALLETAS, CAPERUCITA CAMINA\nHACIA LO DE SU ABUELA. PERO UNA GRAN LLUVIA LA SORPRENDE", 90,50);
       fill (255,0,0);
        //rect (20,50,50,50,7); //esquina izquierda
        rect (730,50,50,50,7);//esquina derecha
        fill(255,255,0);
    textSize(30);
    fill(255);
      // text ("VOLVER", 45,85); //volver
       text ("->", 735,85); //siguiente
        }
          else if (pantalla==4){
             textAlign (CORNER);
          rectMode (CORNER);
          image (cueva,0,0,800,600);
          fill(0,140);
          rect(0,30, 420,50);
         textSize(15);
          fill(255);
          text ("CAPERUCITA SE METE AL BOSQUE EN BUSCA\nDE UN REFUGIO, SE ENCUENTRA CON UNA CUEVA",30,50);
          rect(tam*1, 500,200,75);//derecha
           rect(tam*4, 500,200,75); //izquierda
           fill(0);
           text("QUEDARME HASTA QUE\nPARE LA LLUVIA",(tam*1)+10, 530);
           text("BUSCAR OTRO LUGAR", (tam*4)+10,530);
          }
          else if (pantalla==5) {
            textAlign (CORNER);
          rectMode (CORNER);
            image(medianoche,0,0,800,600);
            fill(255);
            textSize(20);
            text("LA LLUVIA PARA Y CAPERUCITA LLEGA A LO DE SU ABUELA A MEDIANOCHE", 40,530);
     fill(0);
        rect (700,50,50,50,7);//esquina derecha
        fill (255,0,0);
       
        rect(50,50,50,50,7); //esquina izquierda
        fill(255);
            textSize(30);
            text("<-", 52,85);// volver izquierda
            
         text("c", 718,85); //creditos derecha
       
          }
          else if (pantalla==6){
            background(255);
            image(lobo, 100,0,400,600);
            fill(0);
            textSize(17);
            text("CAPERUCITA COMIENZA A RODEARSE\nDE LOBOS Y SE ASUSTA MUCHO",450,200);
            fill (255,0,0);
            rect (730,50,50,50,7);//esquina derecha
              textSize(30);
    fill(255);
       text ("->", 735,85); 
          }
          else if (pantalla==7){
            background(255);
            image( cazador,0,0);  
            fill(0);
            textSize(20);
            text("UN CAZADOR QUE VIVÍA CERCA\nESCUCHA LOS GRITOS DE CAPERUCITA,\nY LA SALVA",400,100);
             fill (255,0,0);
            rect (730,50,50,50,7);//esquina derecha
              textSize(30);
    fill(255);
       text ("->", 735,85); 
          }
          else if (pantalla==8){ //FINAL 1
            background(255);
          image(casaabuela,50,0,700,500);
          fill(0);
          textSize(20);
          text("AL DIA SIGUIENTE EL CAZADOR LLEVA A\nCAPERUCITA A LA CASA DE SU ABUELA",50,520);
           rect (700,50,50,50,7);
            fill(255);
            textSize(30);
         text("c", 718,85);
                 fill (255,0,0);
        rect(50,50,50,50,7); //esquina izquierd  
         fill(255);
            textSize(30);
            text("<-", 52,85);// volver izquie
        }
         else if (pantalla==9){
           background(255);
              textAlign (CORNER);
          rectMode (CENTER);
          fill(0,140);
          rect (40, 440, 740,540);
         image (vecina, 0,0,800,600);
       // 
         textSize(20);
         fill(0);
      text("CAPERUCITA SALE A SU PATIO A RECOGER FRUTAS,\nALLÍ SE ENCUENTRA CON SU VECINA QUIEN\nLE DICE QUE ESA NOCHE HABRÁ UNA GRAN TORMENTA\nEN EL BOSQUE" ,50,50);
     rectMode (CENTER);
     textAlign (CENTER);
      rect (150,550,200,75); 
   rect (650,550, 200,75);
   fill(255);
   textSize(15);
    text ("IR AL DIA SIGUIENTE",150,565);
     text( "IR IGUAL CON\nUN PARAGUAS",647,550); 
   }
      else if (pantalla==10){ //FINAL2
         rectMode (CORNER);
     textAlign (CENTER);
     image(regalo, 0,0,800,600);
      fill(0,140);
         rect (40, 500, 700,50);
         fill(255);
         textSize(15);
         text ("AL DIA SIGUIENTE CAPERUCITA VA Y LE ENTREGA EL REGALO A SU ABUELA", width/2, 530);     
        fill(255,0,0);
         rect (700,50,50,50,7);
            fill(255);
            textSize(30);
         text("c", 722,85);
   }
   else if (pantalla==11){
     background(255);
   image (paraguas, 250,200,325,380);
   fill(0);
    textAlign (CORNER);
    textSize(15);
   text("CAPERUCITA SE DIRIGE HACIA EL BOSQUE CON SU PARAGUA",120,120);
     fill (255,0,0);
            rect (730,50,50,50,7);//esquina derecha
              textSize(30);
    fill(255);
       text ("->", 710,60); 
 }
  else  if (pantalla==12) {
   image(bosquelluvioso,0,0); 
   
     fill(0,140);
   rectMode (CORNER);
      rect(80,30,500,100);
      
 fill(255);
          textSize(20);
      text("EN MEDIO DEL BOSQUE COMIENZA A LLOVER Y\nCAPERUCITA SE ASUSTA POR EL FUERTE VIENTO", 90,60);
       fill (255,0,0);
             rectMode (CENTER);
            rect (730,50,50,50,7);//esquina derecha
              textSize(30);
    fill(255);
       text ("->", 710,60); 
  }
   else  if (pantalla==13) {
      image(bosquelluvioso,0,0); 
    image( cazador,0,0); 
     rectMode (CORNER);
      fill(255);
    rect(400,50,300,100);
    fill(0);
    textSize(20);
    text("UN CAZADOR QUE VIVÍA\nCERCA OFRECE LLEVARLA",410,80);
     rect(tam*1, 500,200,75);//derecha
           rect(tam*4, 500,200,75); //izquierda
           fill(255);
           text("SALIR CORRIENDO",(tam*1)+10, 530);
           text("ACEPTAR", (tam*4)+10,530);
   }
   else if (pantalla==14){ //FINAL3
   image(asus,0,0,800,600);
   fill(255);
   textSize(30);
   text("CAPERUCITA SALE CORRIENDO Y LLEGA A\nLO DE SU ABUELA ASUSTADA Y CON FRIO", 70,100);
    fill(255,0,0);
    rect (700,50,50,50,7);
            fill(255);
            textSize(30);
         text("c", 718,85);
 }
   else if (pantalla==15){
  background(255);
  image(camioneta, 0,0,800,700);
  fill(255,0,0);
  textSize(20);
  text("EL CAZADOR LLEVA INMEDIATAMENTE A CAPERUCITA CON SU ABUELA",50,580);
   fill(255,0,0);
    rect (700,50,50,50,7);
            fill(255);
            textSize(30);
         text("c", 718,85);
   }
     
   else  if (pantalla==20){
       textAlign (CENTER);
          rectMode (CORNER);
       image(creditos,0,0);
       fill(255);
       textSize(30);
       text ("CRÉDITOS\nAgustina Bassarotto \nJosé Luis Bugiolachi \nUNLP-Facultad de Artes \n 2020 \nTecnología multimedial 1\n Trabajo práctico n°3\nAventura gráfica: reversión de caperucita roja", width/2, height/2-150);
               fill (255,0,0);
         rect(50,50,50,50,7); 
         fill(255);
            textSize(30);
            text("<-", 73,85);// volv
     }
 }
 void mousePressed() {
   if (((mouseX>50) && (mouseX<250)) && ((mouseY>512.50) && (mouseY<587.50)) && (pantalla==0)) { //BOTON IZQUIERDA
   pantalla=1 ; 
 }
  else if (((mouseX>50) && (mouseX<250)) && ((mouseY>512.50) && (mouseY<587.50)) && (pantalla==1)) {
   pantalla=2; 
 }
   else if (((mouseX>50) && (mouseX<250)) && ((mouseY>512.50) && (mouseY<587.50)) && (pantalla==9)) {
   pantalla=10; 
} 
else if (((mouseX>550) && (mouseX<750)) && ((mouseY>512.50) && (mouseY<587.50)) && (pantalla==1)) {
   pantalla=9; 
 }
 else if (((mouseX>550) && (mouseX<750)) && ((mouseY>512.50) && (mouseY<587.50)) && (pantalla==9)) {
   pantalla=11; }
else if (((mouseX>tam*1) && (mouseX<(tam*1)+200)) && ((mouseY>500) && (mouseY<575) && pantalla==4)){
  pantalla=5;
} else if (((mouseX>tam*4) && (mouseX<(tam*4)+200)) && ((mouseY>500) && (mouseY<575) && pantalla==4)){
pantalla=6;
}else if (((mouseX>tam*1) && (mouseX<(tam*1)+200)) && ((mouseY>500) && (mouseY<575) && pantalla==13)){
  pantalla=14;
}else if (((mouseX>tam*4) && (mouseX<(tam*4)+200)) && ((mouseY>500) && (mouseY<575) && pantalla==13)){
pantalla=15;
}
         
if (((mouseX>550) && (mouseX<750)) && ((mouseY>475) && (mouseY<625)) && (pantalla==0)){ //BOTON DERECHA
   pantalla+=20; 
 }

 
 }
 
 void keyPressed () {
    
      if (keyCode==RIGHT && pantalla==2 ) {
       pantalla=3; }
     else if (keyCode==RIGHT && pantalla==3){
     pantalla=4;}
     else if (keyCode==RIGHT && pantalla==6){
     pantalla=7;}
     else if (keyCode==RIGHT && pantalla==7){
     pantalla=8;}
     else if (keyCode==RIGHT && pantalla==11){
     pantalla=12;
   }
     else if (keyCode==RIGHT && pantalla==12){
     pantalla=13;
   }
      if ((keyCode==LEFT) && (pantalla==5)){
     pantalla=0;}
     else if ((keyCode==LEFT) && (pantalla==20)){
     pantalla=0;}
     else if ((keyCode==LEFT) && (pantalla==8)){
     pantalla=0;}
    if (key=='c' && pantalla==5){
     pantalla=20;}
     else if (key=='c' && pantalla==8){
     pantalla=20;}
 else if (key=='c' && pantalla==10){
     pantalla=20;}
 else if (key=='c' && pantalla==14){
     pantalla=20;}
     else if (key=='c' && pantalla==15){
     pantalla=20;}
 }
