// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_throw(_x_from, _y_from, _x_to, _y_to){
	var _throwing_force = throwing_force;
	var _inst = instance_create_layer(_x_from, _y_from, "Instances", throwable_item);
	with (_inst)
	{
		var _x_speed = _x_to - _x_from;
		var _y_speed = _y_to - _x_from;
			
			
		var _ratio = 1;
		if (abs(_y_speed) > abs(_x_speed)) {
			_ratio = abs(_y_speed);
		} else {
			_ratio = abs(_x_speed);
		}
			
		if (_ratio== 0) {
			_ratio = 1;
		}
			
		_x_speed = (_x_speed / _ratio) * 10;
		_y_speed = (_y_speed / _ratio) * 10;
		physics_apply_force(_x_from, _y_from, _x_speed * _throwing_force, _y_speed * _throwing_force); 
	}
}

function enemy_drop(_x_from, _y_from){
	instance_create_layer(_x_from, _y_from, "Instances", dropable_item);
}