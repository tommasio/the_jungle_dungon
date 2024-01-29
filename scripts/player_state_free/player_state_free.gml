// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_free()
{

	mask_index = player_idle_anim;
	var _is_on_grass = place_meeting(x, y + 1, obj_floor)
	if !_is_on_grass max_x_speed = 1.5 else max_x_speed = 4
	// Move right
	if keyboard_check(control_right)  
	{
		image_xscale = 1
	   physics_apply_force(x, y, x_force, 0); 
	}

	// Move left
	if keyboard_check(control_left)
	{
		image_xscale = -1
	   physics_apply_force(x, y, -x_force, 0); 
	}
	
	if abs(phy_speed_x) 
	{
		stepcounter += 1
		if stepcounter = step_frames
		{
			audio_play_sound(walk_sound1, 0, false)
		}
		if stepcounter = step_frames * 2
		{
			audio_play_sound(walk_sound2, 0, false)	
			stepcounter = 0;
		}
	}

	var is_jump = 0;
	
	// Jump Input
	if keyboard_check_pressed(control_jump) && jump_buffer_count >= jump_buffer
	{
	   is_jump = true;
	   jump_buffer_count = 0;
	}
	
	// Check / increment jump buffer
	if jump_buffer_count < jump_buffer
	{
	   jump_buffer_count++;
	}

	// Player is standing on ground and account for jump_buffer
	if _is_on_grass && is_jump && jump_buffer_count < jump_buffer
	{
	   // Jump!
	   physics_apply_impulse(x, y, 0, -y_force);
	}

	// Clamp movement speed so we don't accelerate forever
	phy_speed_x = clamp(phy_speed_x, -max_x_speed, max_x_speed);
	
	if attack_check() {
		state = PLAYERSTATE.ATTACK_SLASH;
		audio_play_sound(Sword_sweep,10,false)
	} else if (abs(phy_speed_y) > 1) {
		if (phy_speed_y <= 0) {
			if (sprite_index != seq_player_jump_up)  sprite_index = seq_player_jump_up;	
		}
	} else if (_is_on_grass && phy_speed_x != 0) {
		sprite_index = Player_run_anim;
	} else {
		sprite_index = player_idle_anim;	
	}
}

