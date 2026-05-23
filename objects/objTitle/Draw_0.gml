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
	
draw_text(_scoreX, _scoreY, "High Score: " + string(noone));
	
//Draw start option
var _startX = room_width / 2;
var _startY = room_height * 0.66;
	
draw_text(_startX, _startY, "Press Space to Start");