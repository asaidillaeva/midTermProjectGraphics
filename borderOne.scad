$fn = 50;
height = 80;
width = 12;
length = 220;
 
module border(length, height , width) {
    difference() {
        cube([length, height, width], true);
        
        cube([length - width, height - width, width], true);
        
        translate([0, -height/2, 0])
        cube([length, width, width], true);
        
        rotate(90, [1,0,0]) translate([length/2-width/4, 0, height/2-width])
        cylinder(h=width, r=width/6, center=true);
        
        rotate(90, [1,0,0]) translate([-length/2+width/4, 0, height/2-width])
        cylinder(h=width, r=width/6, center=true);
        
        
        borderHole(length, height, width);    
            
        
        rotate(90, [1,0,0])    
        translate([0, 0, -32])
        cylinder(h=width, r=width/6, center=true);
            
        mirror([1,0,0]) borderHole(length, height, width);

        
                 
 for (a = [1:7]) {
            rotate(90, [1,0,0])    
            translate([a*14, 0, -15])
            cylinder(h=width, r=width/6, center=true);
           }

    }  
}

union() {
    border(length, height, width);
    
    difference() {
        translate([0, height/5, 0])
        cube([length, width/2, width/2], true);
                
            
        hole(length, height, width);    
            
        
        rotate(90, [1,0,0])    
        translate([0, 0, -15])
        cylinder(h=width, r=width/6, center=true);
            
        mirror([1,0,0]) hole(length, height, width);
    }    
    
    color("red")
    mirror([1,0,0])
    rotate(90, [1,0,0])
    translate([-length/7, -5, -height/2 - 4])
    linear_extrude(4)
    text("COM-18", font = "Liberation Sans:style=Bold Italic");
        
    }

module hole(length, height, width) {
    for (a = [1:7]) {
            rotate(90, [1,0,0])    
            translate([a*14, 0, -15])
            cylinder(h=width, r=width/6, center=true);
           }
    }
    
module borderHole(length, height, width) {
    for (a = [1:7]) {
            rotate(90, [1,0,0])    
            translate([a*14, 0, -32])
            cylinder(h=width, r=width/6, center=true);
           }
    }
    
    
 
