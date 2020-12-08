/// @description Ground me, baby
var whatToGenerate = noone;

if(genCounter <= 0) {
	if(lastGenerated == "gap") {
		lastGenerated = "ground";
		
	}
	else {
		lastGenerated = choose("ground", "gap");
	}
	if(lastGenerated == "ground") {
		genCounter = irandom_range(5, 15);
	}
	else {
		genCounter = irandom_range(4, 6);
	}
}
else {
	genCounter--;
}

if(lastGenerated == "ground") {
	whatToGenerate = oGround;
}
else {
	whatToGenerate = noone;
}

if(room == roomTitleScreen) whatToGenerate = oGround;

if(instance_exists(oLogo)) {
	whatToGenerate = oGround;
}
if(whatToGenerate != noone) {
	with (instance_create_layer(600, 362, "Ground", whatToGenerate)) {
		myStep = oGameManager.currSpeed + 0;
	}
}
alarm[1] = demoTimer