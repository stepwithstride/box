$fn = 100;
module triangle(l, w, h) {
    translate([0, l, 0]) rotate(a = [90, 0, 0])
    linear_extrude(height = l) polygon(points = [
        [0, 0],
        [w, 0],
        [0, h]
    ], paths = [
        [0, 1, 2, 0]
    ]);
}


module box() {
    difference() {
        cube(size = [50.8, 101.6, 25.4], center = true);
        cube(size = [47, 96, 22], center = true);
        translate([0, -40, 0]) {
            rotate([90, 0, 0]) cylinder(h = 30, r = 8.2);
        } //distance sensor
        translate([15, 52, 0]) {
            rotate([90, 0, 0]) cylinder(h = 10, r = 2);
        } //charging
        translate([20, 35, 0]) {
            rotate([0, 90, 10]) cylinder(h = 10, r = 2);
        } //vibrator
        translate([-15, 47, -2]) {
            cube(size = [10, 8, 4]);
        }
    }
}

module combined() {
    union() {
        box();
        translate([-25.5, -51, -12.5]) {
            wedge();
        }
    }
}

module wedge() {
    rotate(a = [180, 0, 180]) {
        rotate([0, 0, 90]) {
            triangle(50.8, 101.6, 25.4);
        }
    }
}

module top() {
    rotate(a = [0, 180, 0]) {
        difference() {
            box();
            translate([-26, -51, -14]) {
                cube(size = [52, 103, 14]);
            }
        }
    }
}

module bottom() {
    difference() {
        box();
        translate([-26, -51, 0]) {
            cube(size = [52, 103, 14]);
        }
    }
}

module show_wedge() {
    rotate(a = [0, 180, 0]) {
        wedge();
    }
}

show_wedge();