/// @desc Score text

draw_set_halign(fa_left);

gpu_set_depth(-25);

draw_set_font(mainFont);

//Draw score text
draw_text(5, 5, "Score: " + string(global.gameScore));