/// @description Insert description here
// You can write your code in this editor
var playerTryingToJump	=	oControls.jump;

if(vsp <= 0 && vsp >= -1 && grounded == false && !alarm[0]) {
	alarm[0] = 1;
	myGravity = 0.2;
}

vsp += myGravity;

if(playerTryingToJump && place_meeting(x, y+1, oGround)) {
	vsp = jumpHeight;
	vsp_f = 0;
}
vsp += vsp_f;
vsp_f	=		vsp - (floor(abs(vsp)) * sign(vsp));
vsp		-=		vsp_f;

vsp = min(vsp, vsp_max);

if(place_meeting(x, y+vsp, oGround) && grounded == false) {
	while(!place_meeting(x, y+sign(vsp), oGround)) {
		y = y + sign(vsp);
	}
	vsp = 0;
	grounded = true;
}
else {
	grounded = false;
}

y += vsp;

if(place_meeting(x, y+1, oGround)) {
	sprite_index = sMia;
}
else {
	if(vsp < 0) {
		sprite_index = sMiaUp;
	}
	else {
		sprite_index = sMiaDown;
	}
}

/*
if(grounded == true) {
	sprite_index = sMia;
}
else {

		sprite_index = sMiaUp;
//	}
}
*/