$fn = 50;
height = 80;
width = 12;
length = 220;
error = 0.5;

module hole(length, height, width) {
    rotate(90, [1,0,0])   
    cylinder(h=height - 4, r=width/6 - error, center=true);
    }
    
hole(length, height, width);