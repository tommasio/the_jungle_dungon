var _player = obj_player.global_instance;
if (
	_player &&
	place_meeting(x,y, _player)) {
		
	if !requires_opening || keyboard_check(ord("E")) {
		room_goto(targetRoom);
		obj_player.x = targetX;
		obj_player.Y = targetY
	}
}












