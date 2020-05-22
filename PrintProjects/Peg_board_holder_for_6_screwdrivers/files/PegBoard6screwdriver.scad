// -------------------------------------------
//         Pegboard screwdriver holder for 6 pieces
//                 by Jan-Willem
//
//                   02.01.2016  
// -------------------------------------------
//   22.11.2015 first version printed
//   02.01.2016 official release on thingiverse

//    25 % infill
//    2 shell (2 x 0.4)
//    Cura and Ultimaker original


inch = 25.4; // distance between peg holes
peghole = 5; // diameter

pegy   =7;      // depth of peg pin

// tool hole
tool2 = 12+2;  // upper hole  
tool1 = 8;   // lower hole
toolz = 10;  // depth of funnelshape
tool  = 5;   // hole through

wall = 3;     // thickness of vertical peg plate

$fn = 36;


// Screwdriver holder
difference() {
    union() {
        RoundedBox(6*inch+peghole-2,inch, inch/2, 4);
        cube([6*inch+peghole-2,wall,inch+peghole-1]);
    }           

    for (i = [0 : 5]) {
        translate([inch/2+i*inch+peghole/2, inch/2, -1]) cylinder(r=tool/2, h=3*inch);
        
    translate([inch/2+i*inch+peghole/2, inch/2, (inch+peghole)/2-toolz]) cylinder(r1=tool1/2, r2=tool2/2,h=toolz+0.2); }    
}

// add Peg pins
for (x = [0,3*inch, 6*inch])  {
    translate([x, -pegy, 0]) cube([3,pegy+wall,4]);   // bottom

// upper pin
    translate([x,-pegy,inch]) cube([3,pegy+wall,4]);
    translate([x,-pegy,inch+2]) rotate([0,90,0]) cylinder(r=4/2, h=3);
    translate([x,-pegy+2.2,inch+2]) rotate([90+15,0,0]) cube([3,pegy,4]);
    }
    

// add triangles for support
for (x  = [0, 3*inch, 6*inch]) {
    difference() {
        translate([x,0,inch/2]) cube([wall,inch-4,inch/2+peghole-1]);
        translate([x-1,inch,inch/2]) rotate([53,0,0])
            cube([wall+2,inch,2*inch]);
        }
    }

/* -------------------------------------------------------
     Code for Rounded Box, JWW
   -------------------------------------------------------
 2014.12.13 updated with Empty box
 example
  RoundedBox(20,10,5,2);

 if you want to remove the innerside of a box use for inner side radius-wall
 example
   $fn = 30;
   EmptyBox(40,20,10,1,2);
*/
    
    

// ------------------------------------------------------
// EmptyBox, JWW, x,y,z,wall  r=riadius of rounding
// ------------------------------------------------------
module EmptyBox(xx,yy,zz,wall,rr)
{ difference()
   { RoundedBox(xx,yy,zz,rr);                                 
     translate([wall,wall,wall]) RoundedBox(xx-2*wall,yy-2*wall,zz,rr-wall);
   }
}


// ------------------------------------------------------
// Rounded box, JWW, x,y,z  r=riadius of rounding
// ------------------------------------------------------
module RoundedBox(xx,yy,zz,rr)
{ hull()
	{translate([rr,rr,0])       cylinder(r=rr,h=zz);
	 translate([rr,yy-rr,0])    cylinder(r=rr,h=zz);
	 translate([xx-rr,rr,0])    cylinder(r=rr,h=zz);
	 translate([xx-rr,yy-rr,0]) cylinder(r=rr,h=zz);
     }
}

