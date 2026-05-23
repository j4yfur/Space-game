//Movement
var _ver = keyboard_check(vk_down) -keyboard_check(vk_up);

y += _ver * spd;

//Stay on screen
y = clamp(y, 0 + 16, room_height - 16);

//Shoot projectile
if (keyboard_check_pressed(vk_space))
{
	//If more then 2 projectiles exist, *can't shoot*
	if (instance_number(objPew) < 2)
	{
		instance_create_layer(x + 16, y, "Instances", objPew);
	}	
}