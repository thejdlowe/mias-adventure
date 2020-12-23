/// @description Insert description here
// You can write your code in this editor

groundCount = 55;
demoTimer = 6;
lastGenerated = "ground";
genCounter = 0;

maxHeight = 362;
minHeight = 150;

currHeight = maxHeight;
i = 0;

makeBonus = false;
for(i = 0;i<groundCount;i++) {
	
	with (instance_create_layer(32 * i, currHeight, "Ground", oGround)) {
		var t = 1;
		myStep = oGameManager.currSpeed + 0;
		if(other.i == 0) t = 0;
		else if(other.i == other.groundCount -1) t = 2;
		image_index = t;
	}
}

alarm[1] = 230
alarm[2] = irandom_range(5, 15) * room_speed;