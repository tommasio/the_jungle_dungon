// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_state_free(){
	
	if (attacking_standstill_counter > 0) {
		attacking_standstill_counter -= 1;	
	}
	
	
	var _player = obj_player.global_instance;
	if (
		_player && 
		_player.y > y - enemy_y_vision_range &&
		_player.y < y + enemy_y_vision_range &&
		_player.x > x - enemy_x_vision_range &&
		_player.x < x + enemy_x_vision_range
	) {
	
		dir = sign(_player.x - x);
	}
	
	if (
		_player && 
		can_throw &&
		_player.y > y - enemy_y_throwing_range &&
		_player.y < y + enemy_y_throwing_range &&
		_player.x > x - enemy_x_throwing_range &&
		_player.x < x + enemy_x_throwing_range
	) {
		throwing_counter += 1;
		
		if (throwing_counter == throwing_delay) {
				attacking_standstill_counter = attacking_standstill;
				enemy_throw(x,y- 50, _player.x, _player.y);
		}
		if (throwing_counter % throwing_interval == 0) {
				attacking_standstill_counter = attacking_standstill;
				enemy_throw(x,y- 50, _player.x, _player.y);
		}
	}
	
	if (
		_player && 
		can_drop &&
		_player.x > x - droping_range &&
		_player.x < x + droping_range 
	) {
		droping_counter += 1;
		
		if (droping_counter == droping_delay) {
				attacking_standstill_counter = attacking_standstill;
				enemy_drop(x,y);
		}
		if (droping_counter % droping_interval == 0) {
				attacking_standstill_counter = attacking_standstill;
				enemy_drop(x,y);
		}
	}
	
	
	hsp = 0;
	
	if (attacking_standstill_counter == 0) {
		 hsp = dir * max_x_speed
	}
	
	if (!can_fly) {
		vsp += gravity;
	} else {
		vsp = 0;
	}

	if (hsp> 0) {
		image_xscale = 1;
		sprite_index = run_sequence
	} else {
		image_xscale = -1;
		sprite_index = run_sequence
	}


	//horizontal Collision
	if (place_meeting(x+hsp,y,obj_floor))
	{
		while (!place_meeting(x+sign(hsp),y,obj_floor))
	    {
			x += sign(hsp);
		}
		hsp = 0;
		dir *= -1;
		
	}
	
	x += hsp;	

	//vertical Collision
	if (place_meeting(x,y+vsp,obj_floor))
	{
		while (!place_meeting(x,y+sign(vsp),obj_floor))
	    {
			y += sign(vsp);
		}
		vsp = 0;
		
	}
	y += vsp;

	//enemy Collision
	if (place_meeting(x,y,obj_player))
	{
		state = ENEMYSTATE.FIGHTING;
	} 
}