/// @desc Show text Pause

draw_set_halign(fa_center);

if (global.pause == false)
{
	//Draw how to Pause
	var _toPauseX = room_width / 2;

	if (global._gamepad)
	{
		draw_text_transformed(_toPauseX, 5, "Press Menu to Pause", 0.5, 0.5, image_angle);
	}
	else
	{
		draw_text_transformed(_toPauseX, 5, "Press P to Pause", 0.5, 0.5, image_angle);
	}
}

if (global.pause == false) exit;

//Draw Pause text
var _pauseX = room_width / 2;
var _pauseY = room_height / 2;

draw_text_transformed(_pauseX, _pauseY, "Pause", 3, 3, image_angle);
	