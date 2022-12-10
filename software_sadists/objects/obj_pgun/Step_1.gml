x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay--;
if (keyboard_check(vk_space)) && (firingdelay < 0)
{
	firingdelay = 5;
	with (instance_create_layer(x,y,"Bullets",obj_pbullet))
	{
		speed = 10;
		direction = other.image_angle;
		image_angle = direction;
	}
}

