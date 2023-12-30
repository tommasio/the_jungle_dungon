// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_check(){
	return keyboard_check(control_attack) || mouse_check_button(mb_left);
}