/// @description Insert description here
// You can write your code in this editor
var groundCount = 50;

for(var i = 0;i<groundCount;i++) {
	
	with (instance_create_layer(32 * i + 600, 340, "Ground", oGround)) {
		myStep = oGameManager.currSpeed;
	}
}