clearance = 0.2;
l = 15 - clearance;
w = 7.8 - clearance;
h = 5;
r = 1;
b = 0.75;
h2 = 1;

//rb = r+b;
//lb = l+b;
//wb = w+b;

$fn = 50;




union(){
    
//length cube
translate([0, r, 0])
cube([l, w-(r*2), h]);

//width cube
translate([r, 0,0])
cube([l-(r*2), w, h]);

//radius corner
translate([r, r, 0])
cylinder(h, r, r);

//radius corner
translate([r, w-r, 0])
cylinder(h, r, r);

//radius corner
translate([l-r, w-r, 0])
cylinder(h, r, r);

//radius corner
translate([l-r, r, 0])
cylinder(h, r, r);

//brim
translate([-b, -b, -b])
cube([l+(b*2), w+(b*2), b]);

//contact cube
translate([b*2,b*2,-(b+h2)])
cube([l-(b*4), w-(b*4), h2]);
}


