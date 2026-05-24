if (global.pause == true) exit;

//Movement
var _ver = real(keyboard_check(vk_down) -keyboard_check(vk_up));

//Is controller connected
if (global._gamepad == true)
{
	_ver = gamepad_axis_value(0, gp_axislv);
}

y += _ver * spd;

//Stay on screen
y = clamp(y, 0 + 16, room_height - 16);

//Shoot projectile

	var _fire = keyboard_check_pressed(vk_space);

//Is controller connected
if (global._gamepad == true)
{
	_fire = gamepad_button_check_pressed(0, gp_face1);
}

if (_fire)
{
	//If more then max amount of projectiles exist, *can't shoot*
	if (instance_number(objPew) < 2)
	{
		instance_create_layer(x + 16, y, "Instances", objPew);
		
		//Pitch shift
		var _pitch = random_range(0.75, 1.25);
		
		audio_play_sound(sndPew, 1, false, 0.5, 0, _pitch);
	}	
}