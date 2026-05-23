/// @desc pause with Esc

if (global.pause == false)
{
	global.pause = true;
	
	//Pause meteoroids
	with (objMeteroid)
	{
		objMeteroid.hspeed = 0;
	}
	//Pause Background
	layer_hspeed("Background", 0);
}
else if (global.pause == true)
{
	global.pause = false;
	
	//Resume meteoroids
	with (objMeteroid)
	{
		objMeteroid.hspeed = global.meteroidSpd;
	}
	//Resume Background
	layer_hspeed("Background", -0.5)
	
	//Resume meteoroid creation
	objCreateMeteroid.alarm[0] = objCreateMeteroid.rate;
}