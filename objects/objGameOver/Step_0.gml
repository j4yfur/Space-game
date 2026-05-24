if (global.gameHealth <= 0)
{
	//Set highscore
	if (global.gameScore > global.highScore)
	{
		global.highScore = global.gameScore;
	}
	
	saveGame();
	
	//Clear all instances
	with (all)
	{
		if (id != other.id)
		{
			instance_destroy();
		}
		instance_create_layer(0, 0, "Instances", objFullscreen);
		
	}
	//Stop moving background
	layer_hspeed("Background", 0);
	
	//Give option to restart
	if (keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0, gp_face1))
	{
		game_restart();
	}
}