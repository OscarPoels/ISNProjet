import ddf.minim.*; // Bilbiothèque ajouté pour la musique

Minim minim;
AudioPlayer Musique;
AudioSample Boutton;
AudioSample PlacerTourelle;
AudioSample SonMonstre;
AudioSample SonAie;
AudioSample SonOeuf;
AudioSample SonMonstre2Damage;
AudioSample SonMonstre2Mort;

PFont Police;
PImage Bouton1; // bouton placer tourelle
PImage GameOverText;
PImage Pause;
PImage PauseSur;
PImage Vie0; 
PImage Vie1; 
PImage Vie1p;
PImage Vie2;
PImage Vie2p;
PImage Vie3;
PImage Vie3p;
PImage Vie4;
PImage Vie4p;
PImage Vie5;
PImage Vie5p;
PImage Vie6;
PImage Vie6p;
PImage Vie7;
PImage Vie7p;
PImage Vie8;
PImage Vie8p;
PImage Vie9;
PImage Vie9p;
PImage Vie10;
PImage Vie10p;
PImage GameOver1; 
PImage Poubelle; 
PImage NouvellePartie;
PImage NouvellePartieSur;
PImage Bouton1Dessus; // bouton placer tourelle quand la souris le surpasse
PImage Quitter;
PImage QuitterSur;
PImage MAP; // image de fond
PImage Tourelle1; // image de tourelle
PImage Monstre1Down; // image de monstre regard bas
PImage Monstre1Top; // image de monstre regard haut
PImage Monstre1Left; // image de monstre regard gauche
PImage Monstre1Right; // image de monstre regard doite
PImage Tourelle1Select; 
PImage Monstre2Left; 
PImage Monstre2Right; 
PImage Monstre2Down; 
PImage Score; 
PImage TourelleImp;
PImage ArgentInsuff;
PImage oeuf;
PImage Play;
PImage PlaySur;
PImage PauseTitre;
PImage SonON;
PImage SonONSur;
PImage SonOFF;
PImage MusiqueON;
PImage MusiqueONSur;
PImage MusiqueOFF;
PImage MenuImage;// Menu
PImage BouttonStart;
PImage BouttonStartSur;
PImage BouttonOptions;
PImage BouttonOptionsSur;
PImage BouttonQuitter;
PImage BouttonQuitterSur;
PImage OptionMusiqueON;
PImage OptionMusiqueONSur;
PImage OptionSonON;
PImage OptionSonONSur;
PImage OptionSonOFF;
PImage OptionMusiqueOFF;
PImage OptionRetourMenuSur;
PImage OptionRetourMenu;
PImage Copyright;// Menu
int f;
int p;
float [][]Cases;
int i;
int j;
int []x=new int[300];
int []y=new int[300];
int []VieMonstre2=new int[300];
int k;
int monstres;
int Money = 300;
boolean Menu = true;
boolean GameOver = false;
boolean Pause2 = false;
int t;
int v;
int d= 100;
int g;
int h;
int Level = 1;
int b;
int n;
int bx;
int ny;
boolean tourelle;
boolean f2 = false;
int s;
boolean timer;
int vie = 10;
int s2;
int s3;
int s4;
int s5;
boolean erreur1 = false;
boolean erreur2 = false;
int Next;
int Next2;
int GO;
int score;
int kt;
int gt;
int ht;
int ij;
boolean Son = true;
boolean Musique2 = true;
int monstre;
int zombie = 1;
int araignee = 2;
int VieRect;
boolean MenuOption = false;
boolean Jeu = false;
boolean SonOFF2 = false;
boolean MusiqueOFF2 = false;
int s6;

 void setup(){
  size (640,640);
  frameRate(100);
  tourelle=false;
  s4=2;
  s5=10;
  minim = new Minim(this);
  
  Cases = new float[11][11];
  
  Police = createFont("Police.ttf",15);
  
  
  Musique = minim.loadFile("Musique2.mp3");  
  Boutton = minim.loadSample("SonBoutton.mp3");
  PlacerTourelle = minim.loadSample("SonPlacerTourelle.mp3");
  SonMonstre = minim.loadSample("SonMonstre.mp3");
  SonAie = minim.loadSample("SonAie.mp3");
  SonOeuf = minim.loadSample("Oeuf.mp3");
  SonMonstre2Damage = minim.loadSample("SonMonstre2Damage.mp3");
  SonMonstre2Mort = minim.loadSample("SonMonstre2Mort.mp3");
  
  textFont(Police);
  
  s3=200;
  s2=200;

  x[1] = 80;
  y[1] = -100;
  monstres = 10;
  for(k=1;k<=200;k++){ // écart de distance entre les monstres
  x[k+1]=x[k];
  y[k+1]=y[k]-100; 
  VieMonstre2[k]=32;
}


  MAP = loadImage("Main.png");
  OptionMusiqueON = loadImage("OptionMusiqueON.png");
  OptionMusiqueONSur = loadImage("OptionMusiqueONSur.png");
  OptionMusiqueOFF = loadImage("OptionMusiqueOFF.png");
  OptionSonON = loadImage("OptionSonON.png");
  OptionSonONSur = loadImage("OptionSonONSur.png");
  OptionSonOFF = loadImage("OptionSonOFF.png");
  OptionRetourMenu = loadImage("OptionRetourMenu.png");
  OptionRetourMenuSur = loadImage("OptionRetourMenuSur.png");
  SonON = loadImage("SonON.png");
  SonONSur = loadImage("SonONSur.png");
  SonOFF = loadImage("SonOFF.png");
  MusiqueON = loadImage("MusiqueON.png");
  MusiqueONSur = loadImage("MusiqueONSur.png");
  MusiqueOFF = loadImage("MusiqueOFF.png");
  Play = loadImage("Play.png");
  PlaySur = loadImage("PlaySur.png");
  Pause = loadImage("Pause.png");
  PauseSur = loadImage("PauseSur.png");
  PauseTitre = loadImage("PauseTitre.png");
  Tourelle1 = loadImage("Tourelle1.png");
  Monstre1Down = loadImage("Monstre1Down.png");
  Monstre1Top = loadImage("Monstre1Top.png");
  Monstre1Left = loadImage("Monstre1Left.png");
  Monstre1Right = loadImage("Monstre1Right.png");
  Tourelle1Select = loadImage("Tourelle1Select.png");
  Bouton1= loadImage("PlacerTourelle.png");
  Bouton1Dessus= loadImage("PlacerTourelle2.png");
  NouvellePartie= loadImage("NouvellePartie.png");
  NouvellePartieSur= loadImage("NouvellePartieSur.png");
  Quitter= loadImage("Quitter.png");
  QuitterSur= loadImage("QuitterSur.png");
  Poubelle= loadImage("Poubelle.png");
  ArgentInsuff= loadImage("ArgentInsuff.png");
  TourelleImp= loadImage("TourelleImp.png");
  Monstre2Left= loadImage("Monstre2Left.png");
  Monstre2Right= loadImage("Monstre2Right.png");
  Monstre2Down= loadImage("Monstre2Down.png");
  oeuf= loadImage("egg.png");
  Vie0 = loadImage("Vie0.png");
  Vie1 = loadImage("Vie1.png");
  Vie1p = loadImage("Vie1p.png");
  Vie2 = loadImage("Vie2.png");
  Vie2p = loadImage("Vie2p.png");
  Vie3 = loadImage("Vie3.png");
  Vie3p = loadImage("Vie3p.png");
  Vie4 = loadImage("Vie4.png");
  Vie4p = loadImage("Vie4p.png");
  Vie5 = loadImage("Vie5.png");
  Vie5p = loadImage("Vie5p.png");
  Vie6 = loadImage("Vie6.png");
  Vie6p = loadImage("Vie6p.png");
  Vie7 = loadImage("Vie7.png");
  Vie7p = loadImage("Vie7p.png");
  Vie8 = loadImage("Vie8.png");
  Vie8p = loadImage("Vie8p.png");
  Vie9 = loadImage("Vie9.png");
  Vie9p = loadImage("Vie9p.png");
  Vie10 = loadImage("Vie10.png");
  Vie10p = loadImage("Vie10p.png");
  GameOver1 = loadImage("GameOver1.png");
  GameOverText = loadImage("GameOverText.png");
  Score = loadImage("Score.png");
  MenuImage = loadImage("Fond.png");
  BouttonStart = loadImage("StartBoutton.png");
  BouttonStartSur = loadImage("StartBouttonSur.png");
  BouttonOptions = loadImage("BouttonOptions.png");
  BouttonOptionsSur = loadImage("BouttonOptionsSur.png");
  BouttonQuitter = loadImage("BouttonQuitter.png");
  BouttonQuitterSur = loadImage("BouttonQuitterSur.png");
  Copyright = loadImage("Copyright.png");
  
reset();
  
}


void draw(){
Menu();
MenuOption();
GameOver();
Pause();
if(Jeu == true)
{
if(vie == 0)
{
GameOver = true; 
Jeu = false;
}
//println(" "+monstres);
background(MAP);
textSize(15);
fill(0);
text("Argent :"+Money,450,24);
image(Bouton1,382,595);
text("Niveau :"+Level,450,64);
image(Pause,602,5);
    if(mouseX < 634 && 602 < mouseX  && mouseY < 37 && 5 < mouseY)
    {
        image(PauseSur,602,5);
    }
s5=s5+1;
vie();
Level();
Musique.play(); // Musique de fond
NextLevel();
tourelle();
Monstres();
AfficherVieMonstre();
}
}

void NextLevel()
{
Next = 0;
Next2 =0;
for (k=1;k<=monstres;k++){ 
//println(" "+x[k]+" "+y[k]);
Next = Next + monstres * x[k];

Next2 = Next2 + monstres * (-200);
}
// println(" " + Next+" "+Next2);

if (Next == Next2)
{
  for (k=1;k<=monstres;k++){ 
  x[1] = 80;
  y[1] = -100;
  for(k=1;k<=200;k++){ // écart de distance entre les monstres
  VieMonstre2[k] = 32;
  x[k+1]=x[k];
  y[k+1]=y[k]-100; 
}
  }
      for(i=1;i<11;i++) // balaye toutes les cases du tableau
    {
      for(j=1;j<11;j++) 
      {
        if(Cases[i][j]>=2  && Cases[i][j]<=19){
          Cases[i][j]=2.4;
        }
      }
    }
 Level = Level +1; 
  
}

}

void AfficherVieMonstre(){
  if(monstre == araignee)
  {
    for (k=1;k<=monstres;k++){ 
      VieRect=VieMonstre2[k];
           fill(0);
           rect(x[k],y[k]-20,32,10); 
           fill(#41E821);
           rect(x[k],y[k]-20,VieRect,10); 
     }
  }
}

void tourelle(){ 
for(i=1;i<11;i++) // balaye toutes les cases du tableau
  {
    for(j=1;j<11;j++) 
    {
if(Cases[i][j]>=2){
  Cases[i][j]=Cases[i][j]+0.001;
     }
    }
  }
s2=s2+1;
s3=s3+1;

i=(mouseX/64)+1;//Convertir les coordonnées en cases 10x10
j=(mouseY/64)+1;
t=(i-1)*64; // traduction des cases en coordonnées
v=(j-1)*64; 

    if(mousePressed && Cases[i][j]==0 && Money >= 100 && tourelle == true && s>=10 )//Placement des tourelles
    { 
    PlacerTourelle.trigger();
    Cases[i][j]=2.4;
    Money = Money - 100;
    s=0;
    tourelle = false;
    timer=false;
    }
     if(mouseX < 635 && 379 < mouseX  && mouseY < 635 && 595 < mouseY)
      {
        image(Bouton1Dessus,382,595);
      }
      
      if(mousePressed && mouseX < 638 && 382 < mouseX  && mouseY < 635 && 595 < mouseY && tourelle == false )
      {
        if(Money >= 100)
        {
      Boutton.trigger();
      tourelle = true;
      timer = true;
        }
        else
        {
          s3=0;
        }
      }
        if(tourelle == true && Money >= 100)
        {
        image(Poubelle,64,448);
      if(mousePressed && mouseX < 124 && 64 < mouseX  && mouseY < 512 && 448 < mouseY )
      {
        tourelle = false;
      }
        
        image(Tourelle1Select,t,v,64,64);
        s=s+1;
          if(mousePressed && Cases[i][j] == 1 && s>=10)
          {
          s2=0;  
          }
        }

           if(s2 > 200)
           {
             erreur1 = false;
           }
           if(s3 > 200)
           {
             erreur2 = false;
           }
           

           
           
    for(i=1;i<11;i++) // balaye toutes les cases du tableau
    {
      for(j=1;j<11;j++) 
      {
        if(Cases[i][j]>=18  && Cases[i][j]<=19){
          Cases[i][j]=2.4;
        }
      if(Cases[i][j]>=2 && Cases[i][j]<=19){ // si une case a la valeur pour être une tourelle alors ..
     // println(" "+Cases[i][j]);
      t=(i-1)*64; // traduction des cases en coordonnées
      v=(j-1)*64; 
      g= t+32;
      h= v+32;
      image(Tourelle1,t,v,64,64); //image de tourelle placée
      for (k=1;k<=monstres;k++){ 
      float distance = dist(g,h,x[k],y[k]);
        if(distance<d)// portée des tourelles
        {
          if(Cases[i][j]>=2.4)// intervalle de tir
          {
          s4=0;
          retour();
          Cases[i][j]=2;
          f2 = true;
      }
     }
    }
   }
  }
 }
  calcul();
           if(s2 <=200 && erreur2 == false)
           {
          image(TourelleImp,124,150);
          erreur1 = true;
           }
             if(s3 <=200 && erreur1 == false)
           {
          image(ArgentInsuff,124,150);
          erreur2 = true;
           }

}


void Monstres(){
   for (k=1;k<=monstres;k++){ 
if(x[k]==80 && y[k]<=80){ // chemin prédéfinis pour les monstres
AfficherMonstresDown();
y[k]=y[k]+1;
}
if(x[k]<=528 && y[k]==80){
AfficherMonstresRight();
x[k]=x[k]+1;
}
if(x[k]==528 && y[k]<=208){
AfficherMonstresDown();
y[k]=y[k]+1;
   }
if(x[k]>=80 && y[k]==208){
AfficherMonstresLeft();
x[k]=x[k]-1;
}
if(x[k]==80 && y[k]<=336 && y[k]>=208){
AfficherMonstresDown();
y[k]=y[k]+1;
   }
if(x[k]<=528 && y[k]==336){
AfficherMonstresRight();
x[k]=x[k]+1;
   }
if(x[k]==528 && y[k]<=464 && y[k]>=209 ){
AfficherMonstresDown();
y[k]=y[k]+1;
   }
if(x[k]>=208 && y[k]==464){
AfficherMonstresLeft();
x[k]=x[k]-1;
}
if(x[k]==208 && y[k]<=657 && y[k]>= 464){
AfficherMonstresDown();
y[k]=y[k]+1;
  }
 if(x[k] == 208 && y[k] == 658){
  vie = vie - 1; 
  SonAie.trigger();
      if(vie==0)
  {
    image(Vie1p,450,25,150,12);
    
  }
    if(vie==1)
  {
    image(Vie2p,450,25,150,12);
    
  }
  if(vie==2)
  {
    image(Vie3p,450,25,150,12);
    
  }
  if(vie==3)
  {
    image(Vie4p,450,25,150,12);
    
  }
  if(vie==4)
  {
    image(Vie5p,450,25,150,12);
    
  }
  if(vie==5)
  {
    image(Vie6p,450,25,150,12);
    
  }
  if(vie==6)
  {
    image(Vie7p,450,25,150,12);
    
  }
  if(vie==7)
  {
    image(Vie8p,450,25,150,12);
    
  }
  if(vie==8)
  {
    image(Vie9p,450,25,150,12);
    
  }
  if(vie==9)
  {
    image(Vie10p,450,25,150,12);

    
  }
  y[k]=y[k]+1;

 }
  if(x[k] == 208 && y[k] == 659 && y[k]>= 464){
   x[k]=-200;
   y[k]=-200;
  }
 }
}


void stop() {
  minim.stop();
  super.stop();
}
void AfficherMonstresDown(){
if(monstre == zombie)
{
image(Monstre1Down,x[k],y[k],32,32);
}
if(monstre == araignee)
{
image(Monstre2Down,x[k],y[k],32,32);
}
}

void AfficherMonstresRight(){
if(monstre == zombie)
{
image(Monstre1Right,x[k],y[k],32,32);
}
if(monstre == araignee)
{
image(Monstre2Right,x[k],y[k],32,32);
}
}

void AfficherMonstresLeft(){
if(monstre == zombie)
{
image(Monstre1Left,x[k],y[k],32,32);
}
if(monstre == araignee)
{
image(Monstre2Left,x[k],y[k],32,32);
}
}

void AfficherMonstresUp(){
if(monstre == zombie)
{
image(Monstre1Down,x[k],y[k],32,32);
}
if(monstre == araignee)
{
image(Monstre2Down,x[k],y[k],32,32);
}
}
void calcul() {

  if(s4<1)
  {
  bx=gt;
  ny=ht;
  s4=2;
  b=gt-x[kt];
  n=ht-y[kt];
  SonOeuf.trigger();
  }
 // println(" "+x[kt]);
 //println(" "+y[kt]);
 //println(" "+kt);
 //println(" "+gt);
 //println(" "+ht);
 //println(" "+b);
 //println(" "+n);
 //println(" "+f);
    f=b+n;
  if(f!=0)
  {
    for(ij=0;ij<=5;ij++)
    {
  if(b<0){
    bx=bx+1;
    b=b+1;
    }
   if(b>0){
      bx=bx-1;
      b=b-1;
    //  println(" "+bx);
    }
    if(n<0){
    ny=ny+1;
    n=n+1;
   // println(" "+ny);
    }
    if(n>0){
      ny=ny-1;
      n=n-1;
    }

    image(oeuf,bx,ny,10,10);
    }
} 
     if(f==0 && f2== true)
    {   
      if(monstre == zombie)
      {
  x[kt]=-200;
  y[kt]=-200;  
  SonMonstre.trigger();
  f2=false;
  Money = Money + 5;
      }

      if(monstre == araignee)
      {
        VieMonstre2[kt] = VieMonstre2[kt] - 16;
        SonMonstre2Damage.trigger();
       // println(" "+VieMonstre2[1]);
      //  println(" "+VieMonstre2[2]);
      //  println(" "+VieMonstre2[3]);
        f2=false;
       if(VieMonstre2[kt] == 0)
      {
  x[kt]=-200;
  y[kt]=-200;  
 Money = Money + 10;
 SonMonstre2Mort.trigger();
      }
      }
    }
  

}
void vie(){

    if(vie==0)
  {
  image(Vie0,450,25,150,12);
    
  }
  if(vie==1)
  {
    image(Vie1,450,25,150,12);
    
  }
  if(vie==2)
  {
    image(Vie2,450,25,150,12);
    
  }
  if(vie==3)
  {
    image(Vie3,450,25,150,12);
    
  }
  if(vie==4)
  {
    image(Vie4,450,25,150,12);
    
  }
  if(vie==5)
  {
    image(Vie5,450,25,150,12);
    
  }
  if(vie==6)
  {
    image(Vie6,450,25,150,12);
    
  }
  if(vie==7)
  {
    image(Vie7,450,25,150,12);
    
  }
  if(vie==8)
  {
    image(Vie8,450,25,150,12);
    
  }
  if(vie==9)
  {
    image(Vie9,450,25,150,12);
    
  }
    if(vie==10)
  {
    image(Vie10,450,25,150,12);
  }

//println(" " +vie);
}
void GameOver()
{
  if(GameOver == true)
{
  background(MAP);
  image(GameOver1,0,0);
  image(NouvellePartie,200,250);
  image(Quitter,200,300);
  image(GameOverText,225,100);
  image(Score,250,200);
  fill(#FFE51A);
  if(GO==0){
  score = Level - 1;
  GO=1;
  }
  text(""+Level,325,223);
     if(mouseX < 456 && 200 < mouseX  && mouseY < 340 && 300 < mouseY) // bouton quitter
      {
          image(QuitterSur,200,300);
      }
     if(mouseX < 456 && 200 < mouseX  && mouseY < 290 && 250 < mouseY) // bouton quitter
      {
          image(NouvellePartieSur,200,250);
      }
     if(mousePressed && mouseX < 456 && 200 < mouseX  && mouseY < 340 && 300 < mouseY) // bouton quitter
      {
        Boutton.trigger();
        exit();
      }
      if(mousePressed && mouseX < 456 && 200 < mouseX  && mouseY < 290 && 250 < mouseY) // bouton quitter
      {
        Boutton.trigger();
        Level = 1;
        GameOver=false;
        vie=10;
        reset();
        Money = 300;
        for (k=1;k<=monstres;k++){ 
  x[1] = 80;
  y[1] = -100;
  for(k=1;k<=200;k++){ // écart de distance entre les monstres
  x[k+1]=x[k];
  y[k+1]=y[k]-100; 
}
}
}
}
}
void Level()
{

  if(Level <=2){
    monstre = zombie;
  }
  if(Level >= 3){
    monstre = araignee;
  }
  monstres = (Level*10)/monstre;
}
void reset(){
    for(i=1;i<11;i++) // Donne la valeur 0 à toutes les cases
  {
    for(j=1;j<11;j++)
    {
      Cases[i][j]= 0;
    }
  }
  //  println("La valeur est :"+Cases[7][7]); 
  
Cases[2][1]= 1; // cases ou vont passer les monstres = impossible de poser une tourelle dessus
Cases[2][2]= 1;
Cases[3][2]= 1;
Cases[4][2]= 1;
Cases[5][2]= 1;
Cases[6][2]= 1;
Cases[7][2]= 1;
Cases[8][2]= 1;
Cases[9][2]= 1;
Cases[9][3]= 1;
Cases[9][4]= 1;
Cases[8][4]= 1;
Cases[7][4]= 1;
Cases[6][4]= 1;
Cases[5][4]= 1;
Cases[4][4]= 1;
Cases[3][4]= 1;
Cases[2][4]= 1;
Cases[2][5]= 1;
Cases[2][6]= 1;
Cases[3][6]= 1;
Cases[4][6]= 1;
Cases[5][6]= 1;
Cases[6][6]= 1;
Cases[7][6]= 1;
Cases[8][6]= 1;
Cases[9][6]= 1;
Cases[9][7]= 1;
Cases[9][8]= 1;
Cases[8][8]= 1;
Cases[7][8]= 1;
Cases[6][8]= 1;
Cases[5][8]= 1;
Cases[4][8]= 1;
Cases[4][9]= 1;
Cases[4][10]= 1;
Cases[7][10]= 1;
Cases[8][10]= 1;
Cases[9][10]= 1;
Cases[10][10]= 1;
Cases[2][8]= 20;
Cases[8][1]= 1;
Cases[9][1]= 1;
Cases[10][1]= 1;
}
void retour(){
  kt=k;
  gt=g;
  ht=h;
  //println(" "+kt);
  //println(" "+gt);
//  println(" "+ht);
}

void Pause(){
  if(Pause2 == true)
  {
    s5=s5+1;
background(MAP);
textSize(15);
fill(0);
text("Argent :"+Money,450,24);
image(Bouton1,382,595);
text("Niveau :"+Level,450,64);
image(Play,602,5);
vie();
image(PauseTitre,114,200);
image(SonON,10,10);
image(MusiqueON,10,52);
     if(mouseX < 42 && 10 < mouseX  && mouseY < 42 && 10 < mouseY && Son == true)
    {
      image(SonONSur,10,10);
    }
     if(mouseX < 42 && 10 < mouseX  && mouseY < 84 && 52 < mouseY && Musique2 == true)
    {
      image(MusiqueONSur,10,52);
    }
        if(mousePressed && mouseX < 42 && 10 < mouseX  && mouseY < 42 && 10 < mouseY && Son == true)
      {
      SonAie.close();
      Boutton.close();
      SonMonstre.close();
      SonMonstre2Mort.close();
      SonMonstre2Damage.close();
      PlacerTourelle.close();
      SonOeuf.close();
      Boutton.close();
      Son = false;
      }
      if(mousePressed && mouseX < 42 && 10 < mouseX  && mouseY < 84 && 52 < mouseY && Musique2 == true)
      {
      Musique.close();
      Musique2 = false;
      }
      if(Son == false)
      {
      image(SonOFF,10,10);
      }
      if(Musique2 == false)
      {
      image(MusiqueOFF,10,52);
      }

        if(mouseX < 634 && 602 < mouseX  && mouseY < 37 && 5 < mouseY)
    {
        image(PlaySur,602,5);
    }
    
  }
  
        if(mousePressed && mouseX < 634 && 602 < mouseX  && mouseY < 37 && 5 < mouseY && Pause2 == false && s5>=10 )
      {
        Pause2=true;
        Jeu = false;
        s5=0;
      }
      
      if(mousePressed && mouseX < 634 && 602 < mouseX  && mouseY < 37 && 5 < mouseY && Pause2 == true && s5>=10)
      {
        Pause2 = false;
        Jeu = true;
        s5=0;
      }

}
void MenuOption()
{
  if(MenuOption == true)
  {
    s6=s6+1;
  background(MenuImage);
  image(OptionSonON,192,300);
  image(OptionMusiqueON,192,350);
  image(OptionRetourMenu,192,400);
  if(SonOFF2==true)
  {
      image(OptionSonOFF,192,300);
  }
  if(MusiqueOFF2==true)
  {
      image(OptionMusiqueOFF,192,350);
  }
     if(mouseX>192 && mouseX<448 && mouseY>300 && mouseY<340 && SonOFF2 == false)
   {
  image(OptionSonONSur, 192, 300);
   }
   if(mouseX>192 && mouseX<448 && mouseY>350 && mouseY<390 && MusiqueOFF2 == false)
   {
  image(OptionMusiqueONSur, 192, 350);
   }   
   if(mouseX>192 && mouseX<448 && mouseY>400 && mouseY<440)
   {
  image(OptionRetourMenuSur, 192, 400);
   }
   if(mousePressed && mouseX>192 && mouseX<448 && mouseY>300 && mouseY<340 && s6>20)
   {
      SonAie.close();
      Boutton.close();
      SonMonstre.close();
      SonMonstre2Mort.close();
      SonMonstre2Damage.close();
      PlacerTourelle.close();
      SonOeuf.close();
      Boutton.close();
      SonOFF2 = true;
      Son=false;
      s6=0;
   }
   if(mousePressed && mouseX>192 && mouseX<448 && mouseY>350 && mouseY<390 && s6>20)
   {
      Musique.close();
      Boutton.trigger();
      MusiqueOFF2 = true;
      Musique2=false;
      s6=0;
   }
   if(mousePressed && mouseX>192 && mouseX<448 && mouseY>400 && mouseY<450 && s6>20)
   {
      MenuOption=false;
      Menu=true;
      Boutton.trigger();
      s6=0;
   }
  }
 }

void Menu()
{
  if (Menu == true)
  {
  background(MenuImage);
  image(BouttonStart, 192, 300);
  image(BouttonOptions, 192, 350);
  image(BouttonQuitter, 192, 400);
  image(Copyright, 420, 625);
  s6=s6+1;
   if(mouseX>192 && mouseX<448 && mouseY>300 && mouseY<340)
   {
  image(BouttonStartSur, 192, 300);
   }
   if(mouseX>192 && mouseX<448 && mouseY>350 && mouseY<390)
   {
  image(BouttonOptionsSur, 192, 350);
   }   
   if(mouseX>192 && mouseX<448 && mouseY>400 && mouseY<440)
   {
  image(BouttonQuitterSur, 192, 400);
   }
   if(mousePressed && mouseX>192 && mouseX<448 && mouseY>300 && mouseY<340 && s6>20)
   {
      Menu = false;
      Jeu = true;
      Boutton.trigger();
      s6=0;
   }
   if(mousePressed && mouseX>192 && mouseX<448 && mouseY>350 && mouseY<390 && s6>20)
   {
      MenuOption = true;
      Menu = false;
      Boutton.trigger();
      s6=0;
   }
   if(mousePressed && mouseX>192 && mouseX<448 && mouseY>400 && mouseY<450 && s6>20)
   {
      exit();
      Boutton.trigger();
   }

  }
}