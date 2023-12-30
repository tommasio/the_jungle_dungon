// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_free(){
	hsp = dir * max_x_speed;
	vsp += gravity;



	//horizontal Collision
	if (place_meeting(x+hsp,y,obj_grass))
	{
		while (!place_meeting(x+sign(hsp),y,obj_grass))
	    {
			x += sign(hsp);
		}
		hsp = 0;
	
		dir *= -1;
	}
	x += hsp;

	//vertical Collision
	if (place_meeting(x,y+vsp,obj_grass))
	{
		while (!place_meeting(x,y+sign(vsp),obj_grass))
	    {
			y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;

	//enemy Collision
	if (place_meeting(x,y,Oplayer))
	{
	    if (Oplayer.y < y-16)	
		{

		
			with(Oplayer) {
				physics_apply_impulse(x, y, 0, -y_force_from_enemy);
			}
		
			state = ENEMYSTATE.DEAD;
			
			audio_play_sound(Enemy1death,10,false)
		
			//for (var i = 0; i < 3; i += 1) {
			//	instance_create_layer(1200 - (i * 40), 180, "Instances", Oenemy1);
			//}

		
		}
		else
		{
			 game_restart();
		}
	}
}