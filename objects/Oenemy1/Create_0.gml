//initialize variabeles

dir = -1;
max_x_speed = 3;
gravity = 0.2;
hsp = 0;
vsp = 0;
state = ENEMYSTATE.FREE;

dead_steps = 0;


enum ENEMYSTATE
{
	FREE,
	HIT,
	DEAD
}