/// @description Insert description here
// You can write your code in this editor

var keyboard_up = keyboard_check_pressed(vk_up);
var keyboard_space = keyboard_check_pressed(vk_space);
var keyboard_up_held = keyboard_check(vk_up);
var keyboard_space_held = keyboard_check(vk_space);

jump = keyboard_up || keyboard_space;
jumpHeld = keyboard_up_held || keyboard_space_held;
startGame = keyboard_check_pressed(vk_enter);