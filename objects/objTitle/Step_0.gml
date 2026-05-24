/// @desc Start game (gamepad)

if (global._gamepad == false) exit;
{
	if (gamepad_button_check_pressed(0, gp_face1))
	{
		room_goto(rmGame);
	}
}