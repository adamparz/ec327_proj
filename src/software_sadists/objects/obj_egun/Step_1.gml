if(instance_exists(obj_enemy) or instance_exists(obj_boss))
{
	if(instance_exists(obj_enemy))
	{
		x = obj_enemy.x;
		y = obj_enemy.y;
	}
	else if(instance_exists(obj_boss))
	{
		x = obj_boss.x;
		y = obj_boss.y;
	}

	objx = obj_player.x - 15;
	objy = obj_player.y + 10;

	image_angle = point_direction(x,y,objx,obj_player.y);

	firingdelay--;
	if (firingdelay < 0)
	{
		firingdelay = 40;
		with (instance_create_layer(x,y,"Bullets",obj_ebullet))
		{
			speed = 1;
			direction = other.image_angle;
			image_angle = direction;
		}
	}
}
else
{
	instance_destroy();
}

/*if(instance_exists(obj_boss))
{
	x = obj_boss.x;
	y = obj_boss.y;

	objx = obj_player.x - 15;
	objy = obj_player.y + 10;

	image_angle = point_direction(x,y,objx,obj_player.y);

	firingdelay--;
	if (firingdelay < 0)
	{
		firingdelay = 40;
		with (instance_create_layer(x,y,"Bullets",obj_ebullet))
		{
			speed = 1;
			direction = other.image_angle;
			image_angle = direction;
		}
	}
}
else
{
	instance_destroy();
}




