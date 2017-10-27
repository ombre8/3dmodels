// Poweroutlet frontpanel with cable slot
// 27.10.2017 Lukas Grimm <ombre@ombre.ch>
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

intersection () {
    difference () {
        cube([8.8,8.8,0.68], center=true);
        translate([0,0,0.25]){
            cube([6,6,0.2], center=true);
        };
        cube([5.8,5.8,10.2], center=true);
        translate([0,4.4,0]){
            cube([0.8, 3.1,0.69], center=true);
        };
        translate([0,0,-35]){
            sphere(35);
        };
    };
    translate([0,0,-39.5]){
        sphere(40);
    };
};
difference () {
    cube([5.8,5.8,0.1], center=true);
    circle(3.2);
    rotate([0,0,45]) {
        square([7,0.2], center=true);
    };
    rotate([0,0,135]) {
        square([7,0.2], center=true);
    };
};
