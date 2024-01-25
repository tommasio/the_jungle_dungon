// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_state_free(){
	
	if (throwing_standstill_counter > 0) {
		throwing_standstill_counter =- 1;	
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
				throwing_standstill_counter = throwing_standstill;
				enemy_throw(x,y + throwing_offset ,_player.x,_player.y);
		}
		if (throwing_counter % throwing_interval == 0) {
				throwing_standstill_counter = throwing_standstill;
				enemy_throw(x,y + throwing_offset,_player.x,_player.y);
		}
	}
	
	
	hsp = 0;
	
	if (throwing_standstill_counter == 0) {
		 hsp = dir * max_x_speed
	}
	
	vsp += gravity;

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