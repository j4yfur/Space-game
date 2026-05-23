global.gameScore = 0;
global.gameHealth = 5;

currentHealth = global.gameHealth;

//Create hearts
for (var i = 1; i < global.gameHealth + 1; i++)
{
	instance_create_layer(5 + 10 * i, 30, "Instances", objHeart);
}