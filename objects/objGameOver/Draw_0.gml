/// @desc Game Over text
if (global.gameHealth <= 0)
{
	draw_set_halign(fa_center);

	//Draw Game Over text
	var _x = room_width / 2;
	var _y = room_height / 3;

	draw_text_transformed(_x, _y, "Game Over", 2, 2, image_angle);
	
	//Draw total score
	var _scoreX = room_width / 2;
	var _scoreY = room_height / 2;
	
	draw_text(_scoreX, _scoreY, "Total Score: " + string(global.gameScore));
	
	//Draw restart option
	var _restartX = room_width / 2;
	var _restartY = room_height * 0.66;
	
	if (global._gamepad == true)
	{
		draw_text(_restartX, _restartY, "Press A to Restart");
	}
	else
	{
		draw_text(_restartX, _restartY, "Press Space to Restart");
	}
}	