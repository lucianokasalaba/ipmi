// TP1 Luciano Kasalaba
// Comision 1
PImage photo;
void setup () {
size (800,400);
photo = loadImage("Oso.jpg");
}
void draw (){
background(108,128,161);
image(photo,0,0);
println(mouseX+","+mouseY,1,0);

///cabeza
fill(246,236,235);
beginShape();
rect(500,270,230,290);
ellipse(603,189,250,250);
endShape();
noFill();
///cuerpo
fill(12,14,26);
beginShape();
ellipse(494,130,70,80);
ellipse(714,126,70,80);
ellipse(561,184,15,15);
ellipse(644,184,15,15);
ellipse(601,395,300,160);
endShape();
noFill();
fill(12,14,26);
beginShape();
ellipse(455,375,10,160);
ellipse(486,311,70,80);
ellipse(465,350,30,50);
ellipse(751,397,10,160);
ellipse(720,311,70,80);
ellipse(740,380,30,100);
ellipse(605,230,50,20);
ellipse(605,251,3,25);
ellipse(604,263,50,3);
endShape();
noFill();
fill(255,255,255);
beginShape();
ellipse(559,183,5,5);
ellipse(642,182,5,5);













}
