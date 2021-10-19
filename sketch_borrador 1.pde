


//Declaración de variables

color Yellow= color(255,255,0);
color Red= color(255,0,0);
int t = 0;
int Temp = 0;
int Pres = 0;
String a= "Ha superado umbral de tiempo !";

void setup (){
size (500,500); //crear una ventana de 500x500
background(150); // color del lienzo
fill(255); // color de la figura
noStroke(); // sin color en el contorno de la figura
ellipse(250,250,100,100); // figura
}

void draw() {

if(mouseX>=100 && mouseY>=100){
  Temp=Temp+5;
  Pres=Pres+5;
  
   if(t<400){
     fill(255);
     ellipse(250,250,100,100);
     t=t+1;
   }
     else{
     fill(Red);
     ellipse(250,250,100,100);
     println(a);
     }
     
} else if(mouseX<100 && mouseY<100){
    fill(255);
    ellipse(250,250,100,100);
    Temp=Temp-5;
    Pres=Pres-5;
}
 println(Temp);
 println(Pres);
}
