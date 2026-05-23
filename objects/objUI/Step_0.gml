/// @desc Destroy heart
if (currentHealth != global.gameHealth)
{
	var _instNum = instance_find(objHeart, currentHealth - 1);
	
	instance_destroy(_instNum);
	
	currentHealth = global.gameHealth;
}