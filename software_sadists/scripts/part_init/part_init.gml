// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#region Particle Types

var ptl = part_type_create();

part_type_sprite(ptl, health_particle, true, true, false);

//part_type_shape(ptl, pt_shape_disk);
part_type_life(ptl, 50, 80);

//part_type_size(ptl, 0.1, 0.2, 0, 0);
part_type_speed(ptl, 1, 2, 0, 0);
part_type_direction(ptl, 0, 360, 0, 0);
part_type_orientation(ptl, 0, 0, 0 , 0, true);
part_type_size(ptl, 0.2, 0.8, 0, 0);

global.ptBasic = ptl;

#endregion

function part_init(){

}