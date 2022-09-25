void Texte(){
  pg.beginDraw();
  pg.translate(100,135);
  pg.textSize(40);
 // pg.strokeWeight(3);
  pg.stroke(0,255,0);
  pg.text(int(tabXYZ[tabX][tabY][0]),cooX,cooY);
  pg.noStroke();
  pg.endDraw();
  
}
void Texte1(){
    pg.beginDraw();
  pg.translate(0,0);
  pg.textSize(80);
 // pg.strokeWeight(3);
  pg.stroke(0,255,0);
  pg.text("Tableau magique de Dirichlet",1770,70);
  pg.noStroke();
  pg.endDraw();
}
void Texte2(){
  
}
void Texte3(){
  
}
