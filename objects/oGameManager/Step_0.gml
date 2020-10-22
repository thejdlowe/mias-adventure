/// @description Insert description here
// You can write your code in this editor

if(room == roomTitleScreen) {
	var playerTryingToJump	=	oControls.jump;
	if(playerTryingToJump) {
		room_goto(roomGame);
	}
}