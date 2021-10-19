
// Nombre: Tamara Peña

//Declaración de variables
color Red= color(255,0,0); // color rojo
color Yellow= color(255,255,0); // color amarillo
int t = 0; // tiempo del puntero sobre la figura
int Temp = 0; // variable de Temperatura que comienza desde 0°C
int Pres = 0;// variable de Presión que comienza desde 0°C
String a= "ALERTA! Usted ha superado el límite de tiempo!";
String b= "Retire el puntero de la figura";

void setup (){
  
size (500,500); //crear una ventana de 500x500
fill(255); // color original de la figura
noStroke(); // sin color en el contorno de la figura
textSize(18);// se define el tamaño de letra
}

void draw() {
background(150); // color del lienzo 
rect (50,50,100,100); //Figura de un cuadrado con sus respectivas dimensiones
frameRate(10);
  
if(mouseX>50 && mouseY>50 && mouseX<150 && mouseY<150){ // condición para establecer si el puntero esta dentro de la figura segun sus dimensiones
  Temp=Temp+1; // Temperatura va aumentando gradualmente en 1°C
  Pres=Pres+1; //Presión va aumentando gradualmente en 1 Pa (Pascal)
  t=t+5; // el tiempo comienza aumentar en 5 segundos
  
   if (t>=200){ // si el puntero estando en la figura pasa los 200 segundos la figura se pondra amarillo como modo de precaución
     fill(Yellow); // color amarillo que indica que se está acercando al limite de tiempo 
   }
     if (t>=300){ //si el puntero estando en la figura pasa los 300 segundos la figura se pondra de color rojo como modo de alerta     
     fill(Red); // color rojo indica que ya ha sobrepasado el limite de tiempo
     text(a,70,310); // imprime en el lienzo "ALERTA! Usted ha superado el límite de tiempo!" 
     text(b,70,340); // imprime en el lienzo "Retire el puntero de la figura"
   }
}

else{
t=0;// El tiempo vuelve a cero si el puntero no está sobre la figura
    if(Temp>0 && Pres>0){
     Temp=Temp-1; // Temperatura va disminuyendo gradualmente en 1°C hasta llegar a 0°C
     Pres=Pres-1; //Presión va disminuyendo gradualmente en 1 Pa (Pascal) hasta llegar a 0 Pa (Pascal)
     fill(255); // color original 
   }
}
println("x:y = "+mouseX + " : " + mouseY); // muestra las cordenadas de X e Y en la consola
println("Temperatura= "+Temp); // muestra el valor de la Temperatura en la consola
println("Presión="+Pres); // muestra el valor de la Presión en la consola
println("tiempo="+t); // muestra el valor del tiempo mientras el puntero este en la figura en la consola

text("Temperatura = " +Temp +"°C",260,150); //muestra la temperatura en el lienzo cuando aumenta o disminuye
text("Presión = " +Pres + " Pa",260,180);//muestra la presión en el lienzo cuando aumenta o disminuye
text("Tiempo ="+t +"s",260,80); // se muestra en el lienzo el tiempo que esta el puntero sobre la figura
text("Coordenadas del puntero",260,30);
text("x:y = "+mouseX + " : "+mouseY,260,50);//muestra la posición X,Y en el lienzo
}
