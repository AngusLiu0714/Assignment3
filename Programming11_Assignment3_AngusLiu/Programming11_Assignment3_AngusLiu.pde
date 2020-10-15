///Programming 11
//A summary sheet is attached to this project witi citations. Please refer to that on the Word Document provided on teams (Both were submitted together)
//Angus Liu 
//Assignment 3
//September 23rd, 2020 


PImage pic; //50 lan logo
PImage pic1; // Resturant logo
PImage pic2; //FamilyMart
PImage pic3; // Muji
PFont mentality; //font used for happy new year
PFont koreancalligraphy;  //font for boba tea shop
int moon=100;  //let the moon move around
int x= 500; //firework left
int y= 95; //firework left
int x1= 825; //firework right
int y1= 95;  //firework right'
//varibales for Angus Liu; Shirts abd arms
int x2= 230; //shirts
int y2= 230; //arms
//variables for Angus Liu; smiley face (curve)
int x3=240; //part1

//Taipei 101 firework music background
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim; 
AudioPlayer song;




void setup () { // ===================
size (975,600); 
pic= loadImage ("img1.JPG"); 
pic1=loadImage ("taiwan.foodsjpg.jpg"); 
pic2= loadImage ("family-mart.png"); 
pic3= loadImage ("muji.jpg"); 
mentality= createFont ("Mentality.ttf", 30);
koreancalligraphy= createFont ("Korean_Calligraphy.ttf", 15); 
minim= new Minim(this); 
song= minim.loadFile ("song.mp3");
song.play ();
} // end Setup ========================

void draw () { // =======================
background (25, 25, 112); 


//moon
fill(245, 193, 22);
ellipse(moon,90,140,140); 
//moving moon
moon= moon +1 ;

//looping moon
if (moon > 1100) { 
  moon=-200;
}



//Taipei 101
fill (22, 180, 152); 
quad (570, 500, 595, 405, 755, 405, 785, 500); //base
quad( 570, 305, 595, 405, 755, 405, 770, 305); //second quad 
quad ( 545, 210, 570, 310, 770, 310, 790, 210); //third quad 
quad (505, 95, 545, 210, 790, 210, 825, 95); //fourth quad
rect(660, 85, 20, 10); //rect attaching to attenna for Taipei 101
stroke (22, 180, 152); 
strokeWeight (10); 
line (670, 50, 670, 150); //antenna 

//Happy New Year @Taipei 101! 
fill (255); 
textSize (30); 
textFont (mentality); 
text ("!Happy", 625, 200); 
text ("New", 640, 300);
text ("Year!", 640, 400);


//Taipei 101 Fireworks purple fireworks left 
stroke(225, 10, 255); 
strokeWeight (3); 
line ( x, y, 460, 120);// top left
line (x+10, y+25, 470, 145);  
line (x+20, y+50, 480, 170); 
line (x+30, y+75, 490, 195);
line (x+40, y+100, 500, 220); 
line (x+50, y+125, 510, 245); 
line (x+55, y+150, 520, 270); 
line (x+60, y+175, 530, 295); 
line (x+65, y+200, 540, 320); 
line (x+70, y+225, 550, 345); 
line( x+75, y+250, 560, 370); //bottom left


//Taipei 101 Fireworks Red Left side
stroke(245, 22, 30); 
strokeWeight (3); 
line ( x+10, y, 460, 120);// top left
line (x+20, y+30, 470, 145); 
line (x+30, y+55, 480, 170); 
line (x+40, y+80, 490, 195);
line (x+50, y+105, 500, 220); 
line (x+60, y+130, 510, 245); 
line (x+65, y+155, 520, 270); 
line (x+70, y+180, 530, 295); 
line (x+75, y+205, 540, 320); 
line (x+80, y+230, 550, 345); 
line( x+85, y+255, 560, 370); //bottom left

//Taipei 101 fire works blue left side 
stroke(22, 120, 245); 
strokeWeight (3); 
line ( x+20, y, 460, 120);// top left
line (x+30, y+35, 470, 145); 
line (x+40, y+60, 480, 170); 
line (x+50, y+85, 490, 195);
line (x+60, y+110, 500, 220); 
line (x+70, y+135, 510, 245); 
line (x+75, y+160, 520, 270); 
line (x+80, y+185, 530, 295); 
line (x+85, y+210, 540, 320); 
line (x+90, y+235, 550, 345); 
line( x+95, y+260, 560, 370); //bottom left

//moving all fireworks on left side
x= x+15;
if (x >400){ 
  x= 350; 
}

// looping for all firework colors on left
y=y+1 ; 
if (y >300) {
  y= 200; 
}

//Taipei 101 right side purple
stroke(225, 10, 255); 
strokeWeight (3); 
line ( x1, y1, 855, 120);// top right
line (x1-10, y1+25, 845, 145); 
line (x1-15, y1+50, 835, 170); 
line (x1-25, y1+75, 825, 200);
line (x1-30, y1+105, 820, 230); 
line (x1-40, y1+135, 810, 255); 
line (x1-45, y1+160, 805, 285); 
line (x1-50, y1+190, 800,  310); 
line (x1-55, y1+215, 795, 340); 
line (x1-60, y1+245, 790, 375); 
line( x1-65, y1+280, 785, 400); //bottom right

//Right side of the Taipei 101 fire works (red)
stroke(245, 22, 30); 
strokeWeight (3); 
line ( x1-10, y1 +25, 855, 120);// top right
line (x1-20, y1+50, 845, 145); 
line (x1-25, y1+75, 835, 170); 
line (x1-30, y1+105, 825, 200);
line (x1-40, y1+135, 820, 230); 
line (x1-45, y1+160, 810, 255); 
line (x1-50, y1+190, 805, 285); 
line (x1-55, y1+215, 800,  310); 
line (x1-60, y1+245, 795, 340); 
line (x1-65, y1+280, 790, 375); 
line( x1-70, y1+310, 785, 400); //bottom right

//Right side of the Taipei  101 fireworks (blue) right side 
stroke (22, 120, 245); 
strokeWeight (3); 
line ( x1-20, y1 +25, 855, 120);// top right
line (x1-30, y1+50, 845, 145); 
line (x1-35, y1+75, 835, 170); 
line (x1-40, y1+105, 825, 200);
line (x1-50, y1+135, 820, 230); 
line (x1-55, y1+160, 810, 255); 
line (x1-60, y1+190, 805, 285); 
line (x1-65, y1+215, 800,  310); 
line (x1-70, y1+245, 795, 340); 
line (x1-75, y1+280, 790, 375); 
line( x1-80, y1+310, 785, 400); //bottom right 

//moving all firework colours on the right
x1= x1+15;
if (x1 >950){ 
  x1= 900; 
}

//Looping all firework colors on the right
y1=y1+1 ; 
if (y1 >100) {
  y1= 200; 
}

//ground
strokeWeight (0);
fill (222, 121, 38); 
rect(0, 500, 975, 200); 


//50lan boba tea
fill (255, 249, 60); 
strokeWeight (0);
rect (0, 350, 220, 150); //main store (yellow rect)
fill (0); 
textFont (koreancalligraphy); 
textSize (15);
text ("Taipei 101 Store ",55, 435); //store location
image (pic,35,350, 130, 70); //50 lan logo (main)
fill (250, 249, 60); 
stroke (0); 
strokeWeight (2); 
rect (0, 460, 220, 40);
image (pic,55,465, 100, 30); //for bar (below the bubble tea)


//mini sign for 50lan 
strokeWeight(3);
line(220, 355, 235, 355); 
fill (0, 0, 255); 
image (pic,225,355, 45, 50); // mini 50lan sign



//bubble tea 
fill (255, 230, 115); 
quad (180, 420, 180, 460, 210,460, 210, 420); //cup for the sign 
stroke (0); 
strokeWeight (3); 
line (195, 420, 195, 405); //straw 
fill (0); 
strokeWeight (0); 
ellipse (190, 450, 5, 5); //boba 1 
ellipse (199, 450, 5, 5); //boba 2 
ellipse (182, 457, 5, 5); //bobs 3
ellipse (193, 450, 5, 5); //boba 4 
ellipse (206, 455, 5 ,5 ); //boba 5
ellipse (190, 453, 5, 5); //boba 6
ellipse (200, 458, 5, 5); //boba 7
ellipse (194, 458, 5, 5); //boba 8
ellipse (195, 460, 5, 5); //boba 9
ellipse (197, 448, 5, 5); //boba 10
ellipse (203, 452, 5, 5); //boba 11
ellipse (199, 448, 5, 5); //boba 12
ellipse (185, 455, 5, 5); //boba 13


//Taiwanese Cusine 
fill ( 185, 140, 5); 
rect ( 280, 400, 100,100); //store front
stroke (0); 
strokeWeight (5);  
rect (315,  465, 30, 30); //door
fill (255);
image (pic1, 290, 400, 80, 60); //logo 


// FamilyMart 
fill (0, 255, 40);  
rect ( 390, 400, 170, 100);
image (pic2, 390, 400, 170, 100); 

//Muji 
image (pic3, 790, 400, 185, 100);

//Angus Liu 
stroke (0); 
strokeWeight (1); 
line (y2, 540, y2-15, 520); //left arm
line (y2+35, 542, y2+70, 522); //right arm
rect(x2, 535, 10, 10);// left arm shirt
rect (x2 +30, 535, 10, 10); //right arm shirt
rect (x2+10, 530, 20, 40);  //shirt 
fill (0);
ellipse (x2+20,520, 30, 30); //hair 
fill (242, 220, 130); 
ellipse(x2+20,525,30,30); //head
fill (0); 
ellipse (y2+15, 520, 5, 5); //left eye
ellipse (y2+25, 520, 5, 5); //right eye
//curve for smiley face 
noFill();
stroke(0); //240, 240, 243, 250
curve(x3, 530, x3, 530, x3+3, 535, x3+10, 540);
stroke(0); 
curve(x3+10, 530, x3+3, 535, x3+11, 536, x3+16, 533); 
fill (255);
ellipse(x2+25, 585, 10, 10); //right shoes
ellipse (x2+15, 585, 10, 10); //left shoes
fill (22, 146, 245); 
rect (x2+10, 565, 20, 20); // pants 
stroke (0); 
strokeWeight (1); 
line (y2+20, 585, y2+20, 575); //pants line

//moving shirt
x2= x2 +1 ;
//looping shirt
if (x2 > 1000) { 
  x2=-200;
}

//moving arms
y2= y2 +1 ;
//looping arms
if (y2 > 1000) { 
  y2=-200;
}

//moving smiley face part 1
x3= x3 +1 ;
//looping smiley face part1
if (x3 > 1000) { 
  x3=-200;
}



} // end Draw
