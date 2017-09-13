import processing.sound.*;


int COUNT=50;
float[] Xs = new float[COUNT];
float x;
float [] Ys = new float [COUNT];
float y;
int RECTCOUNT= 1000;
float [] rectxs = new float [RECTCOUNT];
float [] rectys = new float [RECTCOUNT];


PImage musicnotes;
PImage bookshelf;
PImage thehungergames;
PImage divergent;
PImage kiterunner;
PImage papertowns; 
PImage mockingbird;
PImage theselection; 
PImage harrypotter;
PImage houseofhades;
PImage lemoncake;
PImage cheese;
PImage pigeon;
PImage twilight;
PImage separate; 
PImage rainbow;
PImage everyday;
PImage anotherday;
PImage everything;
PImage wildthings;
PImage prisoner;
PImage archie;
PImage crown;
PImage endersgame;
PImage peculiar;
PImage isle;
PImage heir;
PImage ember;
PImage ath;
PImage famousfive;
PImage orange;
PImage magictree;

float[] bookXs= new float[30];
float [] bookYs= new float [30];
boolean[] isClicked= new boolean [30];

SoundFile file;

void setup ()

{

  fullScreen(P2D);
  noStroke();

  file = new SoundFile(this, "studysong.mp3");
  file.play();

  for (int i=0; i <COUNT; i++)
  {
    Xs[i]=random(width);
    Ys[i]=random(height);
  }


  for (int i=0; i <RECTCOUNT; i++)
  {
    rectxs[i]=random(0, 100);
    rectys[i]=random (-1000, 0);
  }

  for (int i=0; i<10; i++)
  {
    bookXs[i]= 100 + i*140;
    bookYs[i]= 200;
  }
  for (int i=10; i<20; i++)
  {
    bookXs[i]= 100+ (i-10)*140;
    bookYs[i]= 490;
  }
  for (int i=20; i<30; i++)
  {
    bookXs[i]= 100+ (i-20)*140;
    bookYs[i]= 770;
  }
  musicnotes = loadImage("musicnotes.png"); 
  bookshelf= loadImage ("bookshelf.jpg");
  bookshelf.resize(width, height);
  thehungergames = loadImage ("thehungergames.jpg");
  divergent = loadImage ("divergent.jpg");
  kiterunner= loadImage ("thekiterunner.jpg");
  papertowns= loadImage ("papertowns.jpg");
  mockingbird= loadImage ("mockingbird.jpg");
  theselection= loadImage ("theselection.jpg");
  harrypotter= loadImage ("harrypotter.jpg");
  houseofhades= loadImage ("houseofhades.jpg"); 
  lemoncake= loadImage ("lemoncake.jpg");
  cheese= loadImage ("cheese.jpg");
  pigeon =loadImage ("pigeon.jpg"); 
  twilight= loadImage ("twilight.jpg");
  separate= loadImage ("separate.jpg");
  rainbow= loadImage ("rainbow.jpg"); 
  everyday= loadImage ("everyday.jpg");
  anotherday= loadImage ("anotherday.jpg");
  wildthings= loadImage ("wildthings.jpg");
  prisoner= loadImage ("prisoner.jpg");
  everything = loadImage ("everything.jpg");
  archie= loadImage ("archie.jpg");
  crown= loadImage ("crown.jpeg");
  endersgame = loadImage ("endersgame.jpg");
  peculiar=loadImage ("peculiar.jpg");
  isle= loadImage ("isle.jpeg");
  heir=loadImage ("heir.jpeg");
  ember= loadImage ("ember.jpg");
  ath= loadImage ("ath.jpg");
  magictree= loadImage ("magictree.jpg");
  orange= loadImage ("orange.jpg");
  famousfive= loadImage ("famousfive.jpg");
}



void draw () 
{

  SetBackground();
  Drawbooks();
  DrawRectsWaterfall();
  DrawEllipse();
}
void SetBackground()
{
  imageMode(CORNER);
  tint(255, 10);
  image(bookshelf, 0, 0);
  imageMode(CENTER);
  noTint();
}



void Drawbooks()
{
  image(thehungergames, bookXs[0], bookYs[0], 140, 200);
  image(divergent, bookXs[1], bookYs[1], 140, 200);
  image (kiterunner, bookXs[2], bookYs[2], 140, 200);
  image(papertowns, bookXs[3], bookYs[3], 140, 200);
  image(mockingbird, bookXs[4], bookYs[4], 140, 200);
  image (theselection, bookXs[5], bookYs[5], 140, 200);
  image (harrypotter, bookXs[6], bookYs[6], 140, 200); 
  image (houseofhades, bookXs[7], bookYs[7], 140, 200);
  image (lemoncake, bookXs[8], bookYs[8], 140, 200);
  image (cheese, bookXs[9], bookYs[9], 140, 200);
  image (pigeon, bookXs[10], bookYs[10], 140, 200);
  image (twilight, bookXs[11], bookYs[11], 140, 200);
  image (separate, bookXs [12], bookYs[12], 140, 200); 
  image (rainbow, bookXs[13], bookYs[13], 140, 200);
  image (everyday, bookXs [14], bookYs[14], 140, 200);
  image (anotherday, bookXs [15], bookYs[15], 140, 200);
  image (everything, bookXs[16], bookYs[16], 140, 200);
  image (prisoner, bookXs[17], bookYs[17], 140, 200);
  image (wildthings, bookXs[18], bookYs[18], 140, 200);
  image (archie, bookXs[19], bookYs [19], 140, 200);
  image (crown, bookXs [20], bookYs[20], 140, 200);
  image (endersgame, bookXs[21], bookYs[21], 140, 200);
  image (peculiar, bookXs[22], bookYs[22], 140, 200);
  image (isle, bookXs[23], bookYs[23], 140, 200);
  image (heir, bookXs[24], bookYs[24], 140, 200);
  image (ember, bookXs[25], bookYs[25], 140, 200);
  image (ath, bookXs[26], bookYs[26], 140, 200);
  image (magictree, bookXs[27], bookYs[27], 140, 200);
  image (orange, bookXs[28], bookYs[28], 140, 200);
  image (famousfive, bookXs[29], bookYs[29], 140, 200);
}



void DrawRectsWaterfall()
{
  for (int i=0; i< RECTCOUNT; i++)
  {
    fill (233, 152, 240);
    rect (rectxs[i], rectys[i], 10, 10 );
    rectys[i]+=6;

    if (rectys[i]>height)
    {
      rectxs[i]=random(0, 100);
      rectys[i]=random (-500, 0);
    }
  }
  for (int i=0; i< RECTCOUNT; i++)
  {
    fill (233, 152, 240);
    rect (rectxs[i], rectys[i], 10, 10 );
    rectys[i]+=6;

    if (rectys[i]>height)
    {
      rectxs[i]=random(1350, 1450);
      rectys[i]=random (-500, 0);
    }
  }
}
void DrawEllipse()
{
  for (int i=0; i < COUNT; i++) 
  {
    fill(random(255), random(255), random (255));
    ellipse (Xs[i], Ys[i], 18, 18);

    Ys[i]++;


    if (Ys[i] > height)
    {
      Ys[i]=0;
    }
  }
}