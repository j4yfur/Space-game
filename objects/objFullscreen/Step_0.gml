/// @desc Fullscreen (gamepad)

if (global._gamepad == false) exit;

	if (gamepad_button_check_pressed(0, gp_select))
	{
		if (window_get_fullscreen())
	{
		window_set_fullscreen(false);
	}
	else
	{
		window_set_fullscreen(true);
	}
}