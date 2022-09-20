/*  SismiWooooffff   loup surpris !!!
    Septembre 2022 pour projet communication 2D vers 3D
    Exprimer un contexte relief, activité, acte.... voir animé
    Juste strategie de liaison de point, ligne tracé en 2D,
    creation des points sur les lignes en 2D
    3D liaison des points d'une ligne aux points de l'autre ligne à z = altitude
    
    Donc, des strategies pour ne pas croisé les lignes du relief (pas 4D);
*/

float x1,y1,x2,y2,x3,y3;
float xA,yA,xB,yB,xC,yC, x0,y0;
float[] xT = {0,0,0};
float[] yT = {0,0,0};
float distance = 0;
PGraphics monImage;
int couleur = 0;

void setup(){
  monImage = createGraphics(900,900,P3D);
  //monImage = createGraphics(900,900,PDF,"monImage.pdf");
  size(900,900,P3D);
  
}
void draw(){
  monImage.beginDraw();
monImage.background(0,255,255);
  monImage.endDraw();
  //fram(30);
  for(int i = 0; i < 3;i++){
    xT[i] = random(100,880);
    yT[i] = random(100,880);
    if(i == 0){
      couleur = 255;
    }else{couleur = 0;}
monImage.beginDraw();

monImage.strokeWeight(30);
monImage.stroke(0,0,couleur);
monImage.point(xT[i],yT[i]);
monImage.noStroke();
monImage.endDraw();
  }
  monImage.beginDraw();
  monImage.strokeWeight(20);
  monImage.stroke(255,0,0);
monImage.line(xT[0],yT[0],xT[1],yT[1]);
monImage.noStroke();
monImage.endDraw();
monImage.beginDraw();
  monImage.strokeWeight(5);
  monImage.stroke(0,0,255);
monImage.line(xT[0],yT[0],xT[2],yT[2]);
monImage.noStroke();
monImage.endDraw();

image(monImage,0,0);
QuelCote();
pushMatrix();
  fill(0);
  textSize(30);
  text("ligne bleu point0 à point2, rouge point0 à point1, SOIT => point2 est à ",20,50);
  
  noFill();
  popMatrix();
delay(3000);
}
