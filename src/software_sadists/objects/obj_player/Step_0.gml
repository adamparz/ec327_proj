//assign arrow inputs to movement
rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
upKey = keyboard_check(ord("W"));
downKey = keyboard_check(ord("S"));

//checking if opposing movements are inputted at same time
xSpd = (rightKey - leftKey)*moveSpd;
ySpd = (downKey - upKey)*moveSpd;

//check for collisions with wall
if place_meeting(x+xSpd, y, obj_wall) {xSpd = 0};
if place_meeting(x, y+ySpd, obj_wall) {ySpd = 0};

//collision with boss door
if(obj_dataCarry.keys == 0)
{
	if place_meeting(x+xSpd, y, obj_bosslock) {xSpd = 0};
	if place_meeting(x, y+ySpd, obj_bosslock) {ySpd = 0};
}
else if(obj_dataCarry.keys == 1)
{
	instance_destroy(obj_bosslock);
}
x+=xSpd;
y+=ySpd;

if (obj_dataCarry.playerhp == 0){
	room_goto(endMenu);
}



