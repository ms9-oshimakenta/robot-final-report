float baH = 80;
float armW11 =10;
float armW12 =3.5;
float armW21 =0.5;
float armW22 =6;
float armW23 =9;
float armW24 =0.5;
float armW31 =9;
float armW32 =5;
float armL1 =60;
float armL2 =40;
float armL3 =40;
float angle0 =0;
float angle1 =0;
float angle2 =0;
float l =0;
float dif = 1.0;


void setup(){
  size(1200, 800, P3D);

  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(#050505);
  
   if(keyPressed){
    if(key == 'b'){
      angle0 = angle0 + dif;
  }
   if(key == 'B'){
      angle0 = angle0 - dif;
    }
  if(key == 'f'){
      angle1 = angle1 + dif;
    }
      if(key == 'F'){
      angle1 = angle1 - dif;
      }

    if(key == 's'){
      angle2 = angle2 - dif;
    }
              if(key == 'S'){
      angle2 = angle2 + dif;
    }
       if(key == 't'){
      l = l - dif;
    }
    if(key == 'T'){
      l = l + dif;
    }
   }
   
  //base
rotateZ(radians(angle0));
translate(0,-7.5,0); //origin=(0,-7.5,0)
  fill(#FFFFFF);box(10,5,baH); //basebox1
 
 translate(0,15,0); //origin(0,7.5,0)
   fill(#FFFFFF); box(10,5,baH); //basearm2
  
  //arm1
  
  translate(0,-7.5,baH/2-5);   //origin=(0,0,35) for rotateX
  rotateY(radians(angle1));
 
  translate(0,3.25,-armL1/2+5);  //origin=(0,3.25,10 ) for make arm1.1(center of arm1.1)
  fill(#98120E);
  box(armW11,armW12,armL1);
   translate(0,-6.5,0);  //origin=(0,-3.25,10 ) for make arm1.2(center of arm1.2)
 fill(#98120E); 
 box(armW11,armW12,armL1);

 //arm2
 translate(0,3.25,-armL1/2+5); //origin=(0,0,-25) for rotateX
 rotateY(radians(angle2));
 
 translate(-4.75,0,armL2/2+5); //origin=(-4.75,0,0) for make arm2.1
 fill(#1320A0);
 box(armW21,armW22,armL2);
 
  translate(9.5,0,0); //origin=(4.75,0,0) for make arm2.2
  fill(#1320A0);
  box(armW21,armW22,armL2);
  
 translate(-4.75,2.75,0); //origin=(0,2.75,0) for make arm2.3
 fill(#1320A0); 
 box(armW23,armW24,armL2);
  
   translate(0,-5.5,0); //origin=(0,-2.75,0) for make arm2.4
fill(#1320A0);
box(armW23,armW24,armL2);
  
 //arm3
 l =constrain(l,-40,0);
  translate(0,2.75,-l); //origin=(0,0,l) for make arm3 and move arm3
 fill(#157115);
 box(armW31,armW32,armL3);
}
