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

image_angle = point_direction(x,y,obj_player.x,obj_player.y);

firingdelay--;
if (keyboard_check(vk_space)) && (firingdelay < 0)
{
	firingdelay = 5;
	with (instance_create_layer(x,y,"Bullets",obj_bullet))
	{
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}
}



