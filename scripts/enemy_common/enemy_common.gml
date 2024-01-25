// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_throw(_x_from, _y_from, _x_to, _y_to){
	var _throwing_force = throwing_force;
	var _inst = instance_create_layer(_x_from, _y_from, "Instances", throwable_item);
	with (_inst)
	{
		physics_apply_force(_x_from, _y_from, sign(_x_to - _x_from) * _throwing_force, sign(_y_to-64 - _y_from) * _throwing_force); 
	}
}