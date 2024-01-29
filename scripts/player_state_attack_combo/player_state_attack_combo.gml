// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_attack_combo(){
	hsp = 0;
	vsp = 0;

	process_attack(player_attack_anim2,player_attack_animHB2, 1)

//Trigger Combo chian
if(control_attack) && (image_index > 12 )
{
	state = PLAYERSTATE.ATTACK_COMBO;	
}

	if (animation_end())
	{
		sprite_index = player_idle_anim;
		state = PLAYERSTATE.FREE;
	}
}