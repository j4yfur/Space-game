/// @desc destory

instance_destroy();

//Pitch shift
var _pitch = random_range(0.75, 1.25);

audio_play_sound(sndMeteoroid, 1, false, 0.2, 0, _pitch);
instance_destroy(other.id);

global.gameScore += 100;