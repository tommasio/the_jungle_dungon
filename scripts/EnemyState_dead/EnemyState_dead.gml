// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_dead(){

	//start of the attack
	if (sprite_index != enemy_death_anim)
	{
		sprite_index = enemy_death_anim;
	    image_index = 0;
	}
	
	
	dead_steps += 1;
	
	if (dead_steps==21) {
	
		instance_destroy()
	}
}