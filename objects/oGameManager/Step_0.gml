/// @description Insert description here
// You can write your code in this editor

if(room == roomTitleScreen) {
	var playerTryingToStart	=	oControls.startGame;
	if(playerTryingToStart) {
		room_goto(roomGame);
	}
}
else {
	var f2 = oControls.restartGame;
	if(f2) {
		if(!instance_exists(oCat)) {
			room_restart();
		}
	}
}