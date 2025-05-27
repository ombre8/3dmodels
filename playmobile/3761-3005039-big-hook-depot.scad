// Big hook depot for playmobile mobile crane 3761

// Playmobil 3761 Big Hook Depot

difference() {
  cube([40.35,18.6,24.4]);
  // hook depot
  translate([2.75,8.9,10])
    cube([34.7,6,14.5]);
  // mount
  cube([40.35,2.5,24.4-1.75]);
  translate([2,2.5,0])
    cube([36.35,5.5,24.4-1.75]);
  // bottom
  cube([40.35,8,7.8]);
  translate([2,0,0])
    cube([36.35,18.6,7.8]);
  translate([0,20.7,-8])
    rotate([65,0,0])
      cube([40.35,50,10]);
}
for (x = [0+2.75, 40.35-(2.75+3.5)]) {
  translate([x,11.5,10])
    cube([3.5,1.5,14.5]);
}

for (x = [0+2, 40.35-(2+2)]) {
  translate([x,4.25,7.8])
    cube([2,1.5,24.4-1.75-7.8]);
}