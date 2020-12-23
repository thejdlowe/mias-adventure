/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(irandom_range(1, 20) == 1) {
	/*with (instance_create_layer(x + 16, y, "BackgroundLayer1", choose(oTree1, oTree2))) {
		myStep = oGameManager.currSpeed;
	}*/
}

//var count = sprite_get_number(sGround1);

//image_index = irandom_range(0, count);

childObject = noone;

childDiff = 10;

if(irandom_range(1,10)== 1) {
	var lay = choose("Grass1", "Grass2");
	childObject = instance_create_layer(x + childDiff, y+2, lay, oFoliage);
}


