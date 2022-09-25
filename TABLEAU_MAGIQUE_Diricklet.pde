/*
Tableau Magique de Dirichlet      et pourquoi pas?  2D vers 3D pour du Z t°C.
l'exterieur du tableau reserver à des valeurs carré ou rectangulaire 
soit 1er et dernier de X, de Y reservés pour des valeur aleatoire
*/
//Dans COLOR
float valColor = 0;
float valColor0 = 0;
int valColorI = 0;
float diffColor = 0; // moyenne de la difference avec voisin voir en float
color colorGrill = color (valColorI, valColorI, valColor0);

float[][][] tabXYZ = new float[21][21][1];
float [][] tabXY = new float[21][21];
float[] tabZ = new float[21*21]; // Z sera changeant
float coupDeDraw = 0; // nbr de boucle draw()
int z = 0;
int cooX = 0,cooY = 0;
int tabX = 0, tabY = 0;
int cadX = 0, cadY = 0;
PImage baseEtablite;
PImage zoneTravaux;
PGraphics pg;
PGraphics pg1;
PImage img;
PImage img1;

void setup(){
  //baseEtablite = createImage(1900,1800,1200);
  pg  = createGraphics(3000,1800,P3D);
  pg1  = createGraphics(3000,1800,P3D);
  size(1900,1200,P3D);
  scale(0.60);
  /*
  
  surface.setTitle("Hello World!");
  surface.setResizable(true);
  surface.setLocation(2000, 1700);*/
  pg.beginDraw();
  pg.background(0);
  pg.endDraw();
  Texte1();
  //pg.PGraphics();
  pg.save("pg.png");
  image(pg,0,0);
  
  for(int y = 0; y < 21; y++){
         cooY = y*80;
         tabY = y;
    for(int x = 0; x < 21; x++){
     if (((x == 0)^(y==0))||((x == 20)^(y==20))){
        cooX = x*80;
        tabX = x;
        tabXYZ[x][y][0]= random(-5,30);
        Texte();
        pg.beginDraw();
        pg.translate(80,80);
        pg.strokeWeight(6);
        pg.stroke(255,0,0);
        pg.line(cooX,cooY,21*80,y*80);
        pg.line(cooX,cooY,x*80,21*80);
        pg.line(cooX,cooY+80,21*80,(y*80)+80);
        pg.line(cooX+80,cooY,(x*80)+80,21*80);/*
        pg.line(cooX+80,cooY+80,(21*80)+80,(y*80)+80);
        pg.line(cooX+80,cooY+80,(x*80)+80,(21*80)+80);*/
        pg.noStroke();
        pg.endDraw();
      }
    }} // for XY
    tabX =1;tabY=1;cooX=1;cooY=1;
    translate(0,0);
    //baseEtablite = createImage(1900,1800,1200);
    pg.save("baseEtablite.png");
    pg.save("pg.png");
    pg1.save("pg.png");
        //baseEtablite = loadImage("baseEtablite.png");
       // image(pg,0,0,1900,1800);
}

void draw(){
  scale(0.60);
  background(0,0,0);
  
  image(pg1,0,0,3000,1800);
  
  pg1.beginDraw();
  pg1.background(0);
  pg1.endDraw();
  image(pg,0,0,3000,1800);
  for(int y = 1; y < 20; y++){
    tabY=y;
    cooY = y*80;
    for(int x = 1; x < 20; x++){
      tabX = x;
      cooX = x*80;
  tabXYZ[x][y][0] = ((tabXYZ[x+1][y][0])+(tabXYZ[x][y+1][0])+(tabXYZ[x-1][y][0])+(tabXYZ[x][y-1][0]))/4;

pg1.beginDraw();
 pg1.translate(100,135);
  pg1.textSize(40);
  //pg.strokeWeight(3);
  pg1.stroke(0,255,0);
  pg1.text(int(tabXYZ[x][y][0]),cooX,cooY); // retiré float pour que sa rentre
  pg1.noStroke();
pg1.endDraw();
tabColor();
    }} // for XY
      pg1.save("pg1.png");
        //baseEtablite = loadImage("baseEtablite.png");
        
}
