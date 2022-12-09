if (instance_exists(obj_dataCarry)){
	// tejas again
	// keys = obj_dataCarry.keys;
	targetEnter = obj_dataCarry.targetEnter;
	
	instance_destroy(obj_dataCarry);
	
	//snap to target
	if (instance_exists(targetEnter)) {
		x = targetEnter.x;
		y = targetEnter.y;
	}
}