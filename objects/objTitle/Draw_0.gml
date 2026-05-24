/// @desc Show title

draw_set_halign(fa_center);

draw_set_font(mainFont);

//Draw Title text
var _x = room_width / 2;
var _y = room_height / 3;

draw_text_transformed(_x, _y, "Space Shooter", 2, 2, image_angle);
	
//Draw high score text
var _scoreX = room_width / 2;
var _scoreY = room_height / 2;
	
draw_text(_scoreX, _scoreY, "High Score: " + string(global.highScore));
	
//Draw start option
var _startX = room_width / 2;
var _startY = room_height * 0.66;
	
if (global._gamepad == true)
{	
	draw_text(_startX, _startY, "Press the A to Start");
}
else
{
	draw_text(_startX, _startY, "Press Space to Start");
}

//Draw how to fullscreen
draw_set_halign(fa_left);

if (global._gamepad == true)
{
	draw_text_transformed(5, 5, "Press Select to Fullscreen", 0.5, 0.5, image_angle);
}
else
{
	draw_text_transformed(5, 5, "Press F4 to Fullscreen", 0.5, 0.5, image_angle);
}