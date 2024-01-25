//initialize variabeles
max_x_speed = max_speed;
gravity = 0.2;
hsp = 0;
vsp = 0;
state = ENEMYSTATE.FREE;
hp = health_points;

dead_steps = 0;


enum ENEMYSTATE
{
	FREE,
	HIT,
	DEAD,
	FIGHTING,
	IDLE,
	FIRE,
	BOMB,
	MINIONS
}