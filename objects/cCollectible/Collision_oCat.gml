/// @description Insert description here
// You can write your code in this editor

if(value == 0) {
	throw "You forgot a value!";
}
oGameManager.currScore += value;
instance_destroy();