/// @description Insert description here
// You can write your code in this editor

obj_dataCarry.playerhp++;

part_particles_create(global.particleSystem, x, y, global.ptBasic, 5);
instance_create_layer(other.x,other.y,"Instances",health_popup);
instance_destroy(other);


