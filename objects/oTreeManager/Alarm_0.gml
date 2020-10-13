/// @description Insert description here
// You can write your code in this editor

with (instance_create_layer(650, 384, "BackgroundLayer1", oTree1)) {
	myStep = oGameManager.currSpeed;
}

alarm[0] = irandom_range(minTree, maxTree);