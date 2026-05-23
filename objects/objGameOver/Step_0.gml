if (global.gameHealth <= 0)
{
	//Clear all instances
	with (all)
	{
		if (id != other.id)
		{
			instance_destroy();
		}
		
	}
	//Stop moving background
	layer_hspeed("Background", 0);
	
	//Give option to restart
	if (keyboard_check_pressed(vk_space))
	{
		game_restart();
	}
}