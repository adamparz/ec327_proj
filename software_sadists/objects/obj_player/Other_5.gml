/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_dataCarry)){
	instance_create_depth(0,0,0, obj_dataCarry);
}

// for Tejas - keys will be persistent from one room to the next
//obj_dataCarry.keys = keys;
obj_dataCarry.targetEnter = targetEnter; // 


