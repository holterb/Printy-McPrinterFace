
dysonH = 36.0;
dysonOuterR = 34.3/2;
dysonInnerR = 28.0/2;
dysonRingInnerR = 30.5/2;
dysonRingH = 4.8;
dysonRingPos = [0,0,10.0];
dysonRingDepth = dysonOuterR-dysonRingInnerR;

hooverH = 30.0;
hooverOuterR = 32.0/2;
hooverInnerR = hooverOuterR - 2.0;

$fn = 180;

module dysonRing()
{
  difference()
  {
    cylinder(h=dysonRingH+dysonRingDepth, r=dysonOuterR);
    translate([0,0,dysonRingH]) cylinder(h=dysonRingDepth, r1=dysonRingInnerR, r2=dysonOuterR);
    cylinder(h=dysonRingH+dysonRingDepth, r=dysonRingInnerR);
  }
}

module dyson()
{
  difference()
  {
    cylinder(h=dysonH, r=dysonOuterR);
    cylinder(h=dysonH, r=dysonInnerR);
    translate(dysonRingPos) dysonRing();
  }
}

module hoover()
{
  difference()
  {
    cylinder(h=hooverH, r=hooverOuterR);
    cylinder(h=hooverH, r1=dysonInnerR, r2=hooverInnerR);
  }
}

transitionH = 5.0;

module transition()
{
  difference()
  {
    cylinder(h=transitionH, r1=dysonOuterR, r2=hooverOuterR);
    cylinder(h=transitionH, r=dysonInnerR);
  }
}

module dysonTest()
{
  difference()
  {
    cylinder(h=10.0, r=dysonOuterR);
    cylinder(h=10.0, r=dysonInnerR);
  }
}

module hooverTest()
{
  difference()
  {
    cylinder(h=10.0, r=hooverOuterR);
    cylinder(h=10.0, r=hooverInnerR);
  }
}

module adapter()
{
  dyson();
  translate([0,0,dysonH]) transition();
  translate([0,0,dysonH+transitionH]) hoover();
}

//dysonTest();
//hooverTest();
adapter();
