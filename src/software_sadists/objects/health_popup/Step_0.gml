/// @description Insert description here
// You can write your code in this editor
image_alpha = image_alpha - 0.03;

x = x + 0.05;
y = y - 0.15;

if (image_alpha <= 0) {
	instance_destroy();	
}

