void tabColor(){
valColor= map(tabXYZ[tabX][tabY][0],-5,30,0,255);
valColor0= 255-valColor;
  valColorI = int(valColor);
  
pg.beginDraw(); // possible pg2 et affiche comme on le souhaite
  pg.translate(1800,200);//  1770,70 Texte1();
  //colorGrill = valColor; 
  // HSB => mode TSL (teinte, saturation et luminosité).  comme pour interpreté la difference entre voisin
    pg.colorMode(RGB);
    valColor = int(255/valColor);
  pg.fill(valColorI,0,valColor0); //colorMode(RGB,100,500,10,255);
    pg.rect(tabX*40,tabY*40,40,40);
  pg.noFill();
pg.endDraw();
pg.beginDraw(); // possible pg2 et affiche comme on le souhaite
  pg.translate(1800,1000);//  1770,70 Texte1();
  //colorGrill = valColor; 
  // HSB => mode TSL (teinte, saturation et luminosité).  comme pour interpreté la difference entre voisin
    pg.colorMode(HSB);
    valColor = int(255/valColor);
  pg.fill(valColor,valColor,valColor); //colorMode(RGB,100,500,10,255);
    pg.rect(tabX*40,tabY*40,40,40);
  pg.noFill();
pg.endDraw();
}
  /*
pg1.beginDraw();
 pg1.translate(100,135);
 pg1.background(0);
  pg1.stroke(0);
  pg1.rect(cooX-20,cooY-20,cooX+20,cooY+20);
  pg1.noStroke();
pg1.endDraw();*/
  
