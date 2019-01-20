
off_ground = 0.1;
body_height = 1.5;

module body() {
    translate([0, 0, body_height/2 + off_ground]) {
        cube([13, 6, body_height], center=true);
    }
}


module half_pin(pin_width, pin_thickness, pin_height, pin_pad_length) {
    translate([0, 0, pin_thickness/2]) {
        cube([pin_width, pin_pad_length, pin_thickness], center=true);
    }
    translate([0,pin_pad_length/2 - pin_thickness/2,pin_height/2]) {
        cube([pin_width,pin_thickness,pin_height], center=true);
    }
}

module pin () {
    pin_width = 0.4;
    pin_thickness = 0.1;
    pin_height = off_ground + body_height/2;
    pin_pad_length = 0.45;
    between = 7.62;

    translate([0, -between/2, 0]) half_pin(pin_width, pin_thickness, pin_height, pin_pad_length);
    translate([0, between/2, 0]) rotate(180) half_pin(pin_width, pin_thickness, pin_height, pin_pad_length);
    translate([0, 0, pin_height-pin_thickness/2]) cube([pin_width,between - pin_pad_length+0.1,pin_thickness], center=true);
}

module pins () {
    pin_pitch = 1.0;
    for (i = [-5.5:1:5.5]) {
        translate([i, 0, 0]) pin();
    }
}

module mbi5024() {
    body();
    pins();
}

mbi5024();

