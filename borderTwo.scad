$fn = 50;
height = 80;
width = 12;
length = 220;
error = 0.1;


union() {
    difference() {
        translate([0, -height/2, 0])
        cube([length, width, width], true);
        
        borderHole(length, height, width);    
            
        
        rotate(90, [1,0,0])    
        translate([0, 0, 32])
        cylinder(h=width, r=width/6, center=true);
            
        mirror([1,0,0]) borderHole(length, height, width);

    }

    rotate(90, [1,0,0]) translate([length/2-width/4, 0, height/2-width])
    cylinder(h=width, r=width/6 - error, center=true);

    rotate(90, [1,0,0]) translate([-length/2+width/4, 0, height/2-width])
    cylinder(h=width, r=width/6- error, center=true);

}
module borderHole(length, height, width) {
    for (a = [1:7]) {
            rotate(90, [1,0,0])    
            translate([a*14, 0, 32])
            cylinder(h=width, r=width/6, center=true);
           }
    }
