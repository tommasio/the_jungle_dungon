// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_state_fighting(){

//enemy Collision
	if (place_meeting(x,y,obj_player))
	{
		
	    if (obj_player.y < y-16)	
		{
		
			with(obj_player) {
				if (abs(phy_speed_y) < 1) {
					physics_apply_impulse(x, y, 0, -y_force);
				}
			}
		
		//	state = ENEMYSTATE.DEAD;
			
		//	audio_play_sound(Enemy1death,10,false)
		
			//for (var i = 0; i < 3; i += 1) {
			//	instance_create_layer(1200 - (i * 40), 180, "Instances", Oenemy1);
			//}

		
		}
		else
		{	
			if cool_down_counter == 0 {
				var _damage_points = damage_points;
				var _hit_sequence = hit_sequence
				var _hitbox_sequence = hitbox_sequence
				 with(obj_player) {
					process_attack( _hit_sequence,_hitbox_sequence)
					 hit_player(_damage_points);	 
				 }	 
				 
				 cool_down_counter = cool_down_frames;
			}
		}
	} else {
		state = ENEMYSTATE.FREE;
	}
}