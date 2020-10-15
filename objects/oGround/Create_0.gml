/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(irandom_range(1, 20) == 1) {
	with (instance_create_layer(x + 16, y, "BackgroundLayer1", oTree1)) {
		myStep = oGameManager.currSpeed;
	}
}
