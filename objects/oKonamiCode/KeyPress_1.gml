/// @description Insert description here
// You can write your code in this editor

if(keyboard_key == konamiCode[currIndex]) {
	currIndex++;
	if(currIndex >= array_length(konamiCode)) {
		oGameManager.isVivi = true;
		currIndex = 0;
	}
}
else {
	currIndex = 0;
}