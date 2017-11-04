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
scale([1.01,1.01,1.01]){
    intersection () {
        difference () {
            cube([88,88,06.8], center=true);
            translate([0,0,2.5]){
                cube([60,60,2], center=true);
            };
            cube([58,58,102], center=true);
            translate([0,44,0]){
                cube([8, 31,6.9], center=true);
            };
            translate([0,0,-350]){
                sphere(350);
            };
        };
        translate([0,0,-395]){
            sphere(400);
        };
    };
    difference () {
        cube([58,58,01], center=true);
        translate([0,0,-30]){
            cylinder(50,32,32);
        };
        rotate([0,0,45]) {
            cube([70,2,2], center=true);
        };
        rotate([0,0,135]) {
            cube([70,2,2], center=true);
        };
    };
}