// Bottom
difference() {
difference() {
    cube(size = [20,40,10], center = true);
    cube(size = [19,39,9], center = true);
    translate([0,-17,0]) { rotate ([90,0,0]) cylinder(h = 10, r = 4, $fn=100); } //distance sensor
    translate([4,21,0]) { rotate ([90,0,0]) cylinder(h = 4, r = 1, $fn=100); } //charging
    translate([-11,10,0]) { rotate ([0,90,0]) cylinder(h = 3, r = 1, $fn=100); } //vibrator
    translate([-7,17,-1]) {cube(size = [5,4,2]); }
}
  translate([-12,-21,0]) { cube(size = [25,45,6]); }
}

/* Top
difference() {
difference() {
    cube(size = [20,40,10], center = true);
    cube(size = [19,39,9], center = true);
    translate([0,-17,0]) { rotate ([90,0,0]) cylinder(h = 10, r = 4, $fn=100); } //distance sensor
    translate([4,21,0]) { rotate ([90,0,0]) cylinder(h = 4, r = 1, $fn=100); } //charging
    translate([-11,10,0]) { rotate ([0,90,0]) cylinder(h = 3, r = 1, $fn=100); } //vibrator
    translate([-7,17,-1]) {cube(size = [5,4,2]); }
}
  translate([-12,-21,0]) { cube(size = [25,45,6]); }
}
*/