/// @description Insert description here
// You can write your code in this editor
if(room == roomTitleScreen) exit;
	
draw_set_valign(fa_middle);
var s = string(oGameManager.currScore);
draw_set_font(fontScore)
outlinedText(500, 20, c_black, c_white, s)