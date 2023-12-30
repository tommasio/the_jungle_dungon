// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function process_attack(){
//start of the attack
	if (sprite_index != argument0)
	{
		sprite_index = argument0	
	    image_index = 0;
		ds_list_clear(hitByAttack)
	}

	//Use attack hitbox and check for hits
	mask_index = argument1;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,Oenemy1,hitByAttackNow,false);
	if hits > 0
	{
	for (var i = 0; i < hits; i++)
	{
		//if this instance has not yet been hit by this attack
		var hitID = hitByAttackNow[| i]; 
		if (ds_list_find_index(hitByAttack,hitID) == -1)
		{
			ds_list_add(hitByAttack,hitID);
			with(hitID)
			{
			    enemy_hit(2)
		
			}
		}
	}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = player_idle_anim;
}