function enemy_hit(_damage){
	
	
	hp -= _damage;
	show_debug_message("enemy_hp:" +  string(hp))
	if (hp <= 0) {
		state = ENEMYSTATE.HIT;
	}
}