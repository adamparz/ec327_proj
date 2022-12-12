/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_pbullet))
{
	bosshp--;
}

if(bosshp == 0)
{
	instance_destroy();
	room_goto(endMenu);
}