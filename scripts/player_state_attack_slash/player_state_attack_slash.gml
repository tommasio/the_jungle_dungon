// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_attack_slash(){
	hsp = 0;
	vsp = 0;

	process_attack(player_attack_anim,player_attack_animHB, 1)

	//Trigger Combo chian
	if attack_check()  && (image_index > 15 )
	{
		state = PLAYERSTATE.ATTACK_COMBO;	
	}

	if (animation_end())
	{
		sprite_index = player_idle_anim;
		state = PLAYERSTATE.FREE;
	}
}
