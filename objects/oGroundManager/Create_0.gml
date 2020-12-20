/// @description Insert description here
// You can write your code in this editor

var groundCount = 55;
demoTimer = 6;
lastGenerated = "ground";
genCounter = 0;

maxHeight = 362;
minHeight = 150;

currHeight = maxHeight;

for(var i = 0;i<groundCount;i++) {
	
	with (instance_create_layer(32 * i, 362, "Ground", oGround)) {
		myStep = oGameManager.currSpeed + 0;
	}
}

alarm[1] = 230