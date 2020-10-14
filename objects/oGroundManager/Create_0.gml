/// @description Insert description here
// You can write your code in this editor

var groundCount = 50;

for(var i = 0;i<groundCount;i++) {
	
	with (instance_create_layer(32 * i, 384, "Ground", oGround)) {
		myStep = oGameManager.currSpeed;
	}
}
//240
alarm[0] = 230