// TP2 Luciano Kasalaba 119059/2
// Comision 1 
String texto1, texto2, texto3;
PFont fuente;
PImage imagen1, imagen2, imagen3;
float posX, posY;
float miVariable = 0; 
int contador;
int estado;
float buttonX, buttonY, buttonWidth, buttonHeight;
color colorBoton = color(200); // Color del botón

void setup() {
  size(640, 480);
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  
  texto1 = "Fast & Furious,\nes una saga que consiste,\npolicial delictiva,\nvarios robos y misiones,\npero su enfacis nacio,atravez de ser,\nuna pelicula de carreras clandestinas,";
  texto2 = "sus carreras clandestinas,\nlos hacian destacar ganando,\nuna reputacion entre voces sumandole el extra,\nde robos o misiones,\npor todo el mundo";
  texto3 = "La Famila,\nlo mas Importante";
  
  fuente = loadFont("Arial-ItalicMT-48.vlw");
  textFont(fuente);
  textAlign(LEFT);
  estado = 1;
  contador = 4;
  posX = 10;
  posY = 320;
  
  buttonWidth = 100;
  buttonHeight = 50;
  buttonX = width - buttonWidth - 20;
  buttonY = height - buttonHeight - 20;
}

void draw() {
  miVariable = frameCount / 2.2; // Aumentar la velocidad de movimiento dividiendo por un número menor
  println(miVariable);
  println("estado=" + estado);
  background(200, 200, 200);
  if (estado == 1) {
    image(imagen1, 0, 0, width, height);
    fill(255, 255, 255);
    textFont(fuente, 40);
    text(texto1, miVariable, 200);
    
    contador++;
    if (contador >= 60) {
      estado++;
      contador = 0;
    }
  } else if (estado == 2) {
    image(imagen1, 0, 0, width, height);
    fill(255, 255, 255);
    textFont(fuente, 40);
    text(texto1, miVariable, 200);
    
    posX += 3; // Aumentar la velocidad de incremento de posX
    if (posX >= width) {
      estado = 3;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if (estado == 3) {
    image(imagen2, 0, 0, width, height);
    fill(255, 255, 255);
    textFont(fuente, 40);
    text(texto2, miVariable, 200);
    
    contador++;
    if (contador >= 60) {
      estado++;
      contador = 0;
    }
  } else if (estado == 4) {
    image(imagen2, 0, 0, width, height);
    fill(255, 255, 255);
    textFont(fuente, 40);
    text(texto2, miVariable, 200);
    
    posX += 3; // Aumentar la velocidad de incremento de posX
    if (posX >= width) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if (estado == 5) {
    image(imagen3, 0, 0, width, height);
    fill(255, 255, 255);
    textFont(fuente, 40);
    text(texto3, miVariable, 400);
    // Dibujar el botón de reinicio después de la tercera imagen
    fill(colorBoton);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Reiniciar", buttonX + buttonWidth / 2, buttonY + buttonHeight / 2);
  } else {
    // un estado no previsto
  }
}

void mousePressed() {
  if (estado == 5 &&
      mouseX > buttonX && mouseX < buttonX + buttonWidth &&
      mouseY > buttonY && mouseY < buttonY + buttonHeight) {
    // Reinicia las variables necesarias
    estado = 1;
    contador = 4;
    posX = 10;
    posY = 320;
    miVariable = 0; // Reiniciar miVariable a 0
    frameCount = 0; // Resetear frameCount
  } else {
    // Otro comportamiento de clic
    estado++;
    contador = 0;
    posX = 20;
    if (estado > 5) {
      estado = 1;
    }
  }
}


    
