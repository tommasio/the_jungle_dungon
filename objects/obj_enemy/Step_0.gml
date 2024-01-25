if (cool_down_counter > 0) {
	cool_down_counter -= 1;
}

switch (state)
{
	case ENEMYSTATE.FREE: enemy_state_free(); break;
	case ENEMYSTATE.HIT: enemy_state_hit(); break;
	case ENEMYSTATE.DEAD: enemy_state_dead(); break;
	case ENEMYSTATE.FIGHTING: enemy_state_fighting(); break;
	case ENEMYSTATE.IDLE: boss_state_idle(); break;
	case ENEMYSTATE.FIRE: boss_state_fire(); break;
	case ENEMYSTATE.BOMB: boss_state_bomb(); break;
	case ENEMYSTATE.MINIONS: boss_state_minions(); break;
}