if hit_player {
	var _hit_damage = hit_damage;
	with(other) {
		hit_player(_hit_damage)
	}
}
