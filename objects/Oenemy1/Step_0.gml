switch (state)
{
	case ENEMYSTATE.FREE: EnemyState_free(); break;
	case ENEMYSTATE.HIT: EnemyState_hit(); break;
	case ENEMYSTATE.DEAD: EnemyState_dead() break;
}