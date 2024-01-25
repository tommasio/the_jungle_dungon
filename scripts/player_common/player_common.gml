// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_check(){
	return keyboard_check(control_attack) || mouse_check_button(mb_left);
}

function hit_player(_damage) {
	

	if(state == PLAYERSTATE.FREE) {
		
		
		hp-=_damage;
		
		
		
		if (hp <= 0) {
			game_restart();
		}
		
	}
}