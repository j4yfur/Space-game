/// @desc create meteroid

_x = room_width - 16;
_y = random(room_height);

instance_create_layer(_x, _y, "Instances", objMeteroid);

alarm[0] = rate;