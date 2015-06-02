class Entry {
  Date timeStamp;

  String section;
  String datey;

  int wordCount;
  int dayis;
  int monthis;
  int yearis;

  float maxW;
  int hours;
  int minutes;

  float space;
  float lineLength;
  float lineHeight;
  float px;
  float py;

  PVector pos = new PVector();
  PVector tpos = new PVector();
  PVector postrans = new PVector();

  PVector posi = new PVector();
  PVector tposi = new PVector();
  PVector tpostrans = new PVector();

  PVector postext = new PVector();
  PVector tpostext = new PVector();

  float birthTime = 0;
  float cx;
  float cy;

  int radius;
  float hoursRadius;
  float hourly;

  boolean hover = false;

  Entry() {
    wordCount = 0;  
    timeStamp = new Date();
  }

  void prep() {
    for (int i = 0; i<entries.length; i++) {
      if (entries[i]!=null) {
        for (int z=0; z<entryCount.length; z++) {
          if (diffArray[i]==z) {
            radius = entryCount[z];
            hoursRadius = radius/radiv;
          }
        }
        px = cx+cos(hourly)*hoursRadius;
        py = cy + sin(hourly)*hoursRadius;
      }
    }
  }

  void update() {
//    pos.x = tpos.x;
//    pos.y = tpos.y;
   pos.x = lerp(pos.x, tpos.x, .05); //magical lerping function - goes from the initial pos (0) to tpos
    pos.y = lerp(pos.y, tpos.y, .05); //magical lerping 
    posi.x =  lerp(posi.x, tposi.x, .05);//tposi.x;
    posi.y =  lerp(posi.y, tposi.y, .05);//tposi.y;
    float hourly;
    float somethingX;
    float somethingY;
  }


  void render() {
    pushMatrix();
    translate(cx, cy);
    rotate(hourly);
    line(pos.x, pos.y, posi.x, posi.y); //not posi.x  
    popMatrix();
  }
}

