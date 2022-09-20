void QuelCote(){
  float d = 0;
  String texte ="";
  
  d = ((xT[1]-xT[0])*(yT[2]-yT[0]))-((yT[1]-yT[0])*(xT[2]-xT[0]));
  distance = dist(xT[0],yT[0],xT[1],yT[1]);
  if(d<0){ // alors C est à GAUCHE de la droite
  texte = "Gauche";
  }
  else if(d==0){ // alors C est sur la droite (DANS SON AXE)
  texte = "Dans AXE";
  }
  else if(d>0){ // alors C est à DROITE de la droite
  texte = "Droite";
  }
  pushMatrix();
  fill(0);
  textSize(30);
  text(texte,20,80);
  
  noFill();
  popMatrix();
}
