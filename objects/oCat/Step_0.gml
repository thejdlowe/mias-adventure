//if(room == roomTitleScreen) exit;
if(y > 500) {
	/*
	var temp = surface_create(display_get_width(), display_get_height());
	surface_set_target(temp);
	draw_surface(application_surface, 0, 0);
	surface_reset_target();
	instance_deactivate_all(false);
	with (instance_create_layer(x, y, "Managers", oGameOverManager)) {
		surf = temp;
	}
	*/
	var _lay = layer_create(-9999,"transition")
	layer_sequence_create(_lay,0,0,seqYouDied);	
	instance_destroy();
	exit;
}

// Input
var playerTryingToJump    =    oControls.jump && (room != roomTitleScreen);
var playerHoldingJump    =    oControls.jumpHeld && (room != roomTitleScreen);

// Change vsp by gravity

vsp = min(vsp + myGravity, vsp_max);

vsp += vsp_f;
	vsp_f	=		vsp - (floor(abs(vsp)) * sign(vsp));
	vsp		-=		vsp_f;
	
if(vsp <= 0 && vsp >= -1 && !alarm[0]) {
	alarm[0] = 10;
	myGravity = 0.2;
}

// Cut jump short when letting go of jump button
if(!playerHoldingJump) {
    vsp = max(vsp, -2);
}

// Input buffering
if(playerTryingToJump) {
    buffer_counter = buffer_max;
}

// Restore double jump when landing on ground
var grounded = place_meeting(x, y+1, oGround);
if (grounded) secondaryMove = true;

// Jump input
if (playerHoldingJump && buffer_counter-- > 0){
    // Standard jump
    if (grounded) {
        vsp = jumpHeight;
        buffer_counter = 0;
    }

    // Double jump
    else if (secondaryMove){
        secondaryMove = false;

        // Double jump as special character
        if(oGameManager.isVivi) {
            myGravity = 0;
			vsp = 0;
			vsp_f = 0;
            alarm[0] = 30;
        }
        else {
            vsp = jumpHeight;
            buffer_counter = 0;
        }
    }
}

// Vertical collision
if (place_meeting(x, y + vsp, oGround)) {
    while (!place_meeting(x, y+sign(vsp), oGround))
        y += sign(vsp);
    vsp = 0;
}

// Horizontal collision
while(place_meeting(x+1, y, oGround)) {
	x -= 1;
}

// Vertical movement
y += vsp;

if(place_meeting(x, y+1, oGround)) {
	if(oGameManager.isVivi != true) {
		sprite_index = sMiaNew;
	}
	else {
		sprite_index = sVivi;
	}
	
}
else {
	if(vsp < 0) {
		if(oGameManager.isVivi != true) {
			sprite_index = sMiaUp;
		}
		else {
			sprite_index = sViviUp;
		}
	}
	else {
		if(oGameManager.isVivi != true) {
			sprite_index = sMiaDown;
		}
		else {
			sprite_index = sViviDown;
		}
	}
}