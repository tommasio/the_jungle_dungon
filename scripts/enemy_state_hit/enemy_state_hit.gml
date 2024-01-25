
function enemy_state_hit(){
	//start of the attack
	if (sprite_index != dead_sequence)
	{
		sprite_index = dead_sequence;
	    image_index = 0;
	}
	
	
	
	dead_steps += 1;
	
	if (dead_steps== frames_until_death) { 
	
		instance_destroy()
	}
}