if (global.pause == true) exit;

//Movement
var _ver = real(keyboard_check(vk_down) -keyboard_check(vk_up));

y += _ver * spd;

//Stay on screen
y = clamp(y, 0 + 16, room_height - 16);

//Shoot projectile
if (keyboard_check_pressed(vk_space))
{
	//If more then max amount of projectiles exist, *can't shoot*
	if (instance_number(objPew) < 2)
	{
		instance_create_layer(x + 16, y, "Instances", objPew);
	}	
}