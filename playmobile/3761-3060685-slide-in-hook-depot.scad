// drawer for hook depot for playmobile mobile crane 3761

// Playmobil 3761 Drawer
// should also work for the 3525v1 Firetruck
// Dimensions: 40.6mm x 32.4mm x 16.9mm
// Wall thickness: 1.8mm

// Main dimensions
outer_w = 40.6;
outer_d = 32.4;
outer_h = 16.9;
wall_thickness = 1.8;

// Internal dimensions
inner_w = outer_w - 2 * wall_thickness;
inner_d = outer_d - 2 * wall_thickness;
inner_h = outer_h - wall_thickness+1;

// Nodge dimensions
nodge_hole_width = 10.5;
nodge_hole_depth = 9;
nodge_from_back = 4.5;
nodge_height = 1.7;
nodge_width = 4;
nodge_depth = 1.2;
nodge_side_spacing = 2;
nodge_other_spacing = 1.4;

module drawer() {
    // Main drawer body
    difference() {
        // Outer shell
        cube([outer_w, outer_d, outer_h]);
        
        // Cut out inner space
        translate([wall_thickness, wall_thickness, wall_thickness])
            cube([inner_w, inner_d, inner_h]);
        
        // Cut out nodge area
        translate([outer_w/2-nodge_hole_width/2,
                  wall_thickness,
                  -0.1])
            cube([nodge_hole_width, nodge_hole_depth, wall_thickness+1]);
    }
    
    // Add nodge
    translate([outer_w/2-nodge_hole_width/2+nodge_side_spacing/2,
                  wall_thickness+nodge_side_spacing,
                  0])
        cube([nodge_hole_width-nodge_side_spacing,nodge_hole_depth-nodge_side_spacing, wall_thickness]);
    
    // Add nodgebloeppel with diagonal cut
    difference() {
        translate([outer_w/2-nodge_width/2,
                      wall_thickness+nodge_side_spacing,
                      -nodge_height])
            cube([nodge_width, nodge_depth, nodge_height]);
            
        // Diagonal cut on y-axis
        translate([outer_w/2-nodge_width/2-0.1,
                  wall_thickness+nodge_side_spacing+nodge_height-.4,
                  -nodge_height-0.1])
            rotate([0, 45, 270])
                cube([nodge_width, nodge_depth+7, nodge_width]);
    }    
    // Add drum roll mounts at the back
    for (x = [0+2.5/2, outer_w-2.5/2]) {
        // Add connecting piece to fill the gap
        difference() {
            // Main connecting piece
            translate([x-1.25, outer_d, 0])
                cube([2.5, 7, 20]);  // 2.5mm wide, 6mm long, 10mm tall
            
            // Cut out the inner hole in the connecting piece
            translate([x-1.26, outer_d+7, 10])  // Slight offset to ensure clean cut
                rotate([0, 90, 0])
                    cylinder(h=3.6, d=8.2, $fn=60);

            translate([x-1.3, outer_d, 8])
                cube([3, 10, 3]);
        }
        // Add the main mount
        translate([x, outer_d+7, 10])  // Position at the front edge
            rotate([0, 90, 0])  // Rotate 90 degrees around Y-axis 
            difference() {
                // Main mount (half cylinder)
                difference() {
                    cylinder(h=2.5, d=20, $fn=60, center=true);
                    // Cut in half horizontally
                    translate([-10, -10, -10])
                        cube([20, 10, 20]);
                }

                // Inner hole
                cylinder(h=3.5, d=8.2, $fn=60, center=true);

                // slide in
                translate([-1, 0, -2])
                cube([3, 10, 42]);
            }
        }
    
}

// Render the drawer
drawer();