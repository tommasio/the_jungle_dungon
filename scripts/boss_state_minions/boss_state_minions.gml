// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boss_state_minions(){
	instance_create_layer(x,y-20, Instances, obj_boss_minion)
}