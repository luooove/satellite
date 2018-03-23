import processing.serial.*;
PFont myFont;
PImage img;
Serial myPort;
void setup() {
  myFont = createFont("fangsong", 40);
  img = loadImage("xmaker.png");
  size(800, 600);  // Stage size
  background(255);
  myPort = new Serial(this, "COM3", 9600);
  textSize(64);
  fill(0, 102, 153);
  stroke(0, 0);
  textFont(myFont);
  text("太空探索冬令营之制造卫星", 180, 60);
  text("地面站信息接收系统", 220, 100);
  textSize(26);
  text("温度：", 180, 150);
  text("光照：", 180, 180);
  text("紫外线强度：", 180, 210);
  text("姿态Pitch：", 180, 240);
  text("姿态Yaw：", 180, 270);
  text("姿态Roll：", 180, 300);
  text("学生：", 180, 350);
  text("日期：2018年3月1日", 180, 380);
  image(img, 550, 500, 43 * 5, 14 * 5);

}
String val="";
float a;

void draw() {

  if ( myPort.available() > 0)
  { // If data is available,
    val="";
    val = myPort.readStringUntil('\n');         // read it and store it in val
    a = float(val);
   // a=float(val);
    println(a);
    if ((int(a) / 10000)%10 == 1)
    {
      //  text("               ",260,150);
      fill (255);//changes the fill to the background color
      rect(260, 120, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text(Float.toString(a %10000), 260, 150);
    }
    if ((int(a) / 10000)%10 == 2)
    {
      fill (255);//changes the fill to the background color
      rect(260, 150, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text(Float.toString(a %10000), 260, 180);
    }
    if ((int(a) / 10000)%10 == 3)
    {
      fill (255);//changes the fill to the background color
      rect(320, 180, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text(Float.toString(a %10000), 320, 210);
    }
    if ((int(a) / 10000)%10 == 4)
    {
      fill (255);//changes the fill to the background color
      rect(320, 210, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
     // if(((a%10000-180)<=180)&&((a%10000-180)>=-180))
      text(Float.toString(a %10000-180), 320, 240);
    }
    if ((int(a) / 10000)%10 == 5)
    {
      fill (255);//changes the fill to the background color
      rect(290, 240, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text(Float.toString(a %10000-180), 290, 270);
    }
    if ((int(a) / 10000)%10 == 6)
    {
      fill (255);//changes the fill to the background color
      rect(320, 270, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text(Float.toString(a %10000-180), 320, 300);
    }
    
    //------显示名字
    if ((int(a) / 10000)/10 == 1)//name1
    {
      fill (255);//changes the fill to the background color
      rect(250, 325, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text("张骅闽", 250, 350);
    }
        if ((int(a) / 10000)/10 == 2)//name2
    {
      fill (255);//changes the fill to the background color
      rect(250, 325, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text("康宸浩", 250, 350);
    }
     if ((int(a) / 10000)/10 == 3)//name3
    {
      fill (255);//changes the fill to the background color
      rect(250, 325, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text("王子麟", 250, 350);
    }
     if ((int(a) / 10000)/10 == 4)//name4
    {
      fill (255);//changes the fill to the background color
      rect(250, 325, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text("薛开心", 250, 350);
    }
     if ((int(a) / 10000)/10 == 5)//name5
    {
      fill (255);//changes the fill to the background color
      rect(250, 325, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text("陈祺介", 250, 350);
    }
     if ((int(a) / 10000)/10 == 6)//name6
    {
      fill (255);//changes the fill to the background color
      rect(250, 325, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text("张朱轩", 250, 350);
    }
     if ((int(a) / 10000)/10 == 7)//name7
    {
      fill (255);//changes the fill to the background color
      rect(250, 325, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text("刘吴柯轩", 250, 350);
    }
     if ((int(a) / 10000)/10 == 8)//name8
    {
      fill (255);//changes the fill to the background color
      rect(250, 325, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text("张涵铭善", 250, 350);
    }
      if ((int(a) / 10000)/10 == 9)//name8
    {
      fill (255);//changes the fill to the background color
      rect(250, 325, 200, 30);//creates a rectangle fill the above fill
      fill(0, 102, 153);
      text("向子恒", 250, 350);
    }
  }
}