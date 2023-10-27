// Veloplus Flag pole conecter
// 27.10.2023 Lukas Grimm <ombre@ombre.ch>
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

translate([0,0,40]){
    difference(){
        cylinder(h = 80, d = 9.75, center = true);
        cylinder(h = 81, d = 6.26, center = true);
    }
    translate([0,0,-1])
    cylinder(h = 2, d = 9, center = true);
}