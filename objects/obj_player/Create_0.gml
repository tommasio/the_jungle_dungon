obj_player.global_instance = self;

stepcounter = 0

hsp = 0;
vsp = 0;
forest_sounds = audio_play_sound(forest_sound, 10, false)
//set health
hp = 100;
hp_max = hp

healthbar_width = 200;
healthbar_height = sprite_get_height(Health_bar_back);
healthbar_x = 30;
healthbar_y = 30

_is_on_grass = false;
_is_on_brick = false;

hitByAttack = ds_list_create();


enum PLAYERSTATE 
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}
state = PLAYERSTATE.FREE;

tilemap = layer_tilemap_get_id("Collision");

jumpspeed = 7;
movespeed = 4;

x_force = 5000;
y_force = 330;
y_force_from_enemy = 400;


// How fast player can move (pixels/second)
max_x_speed = 4;
// Jumping is limited by y_force and gravity room setting


previous_sound = forest_sound;

// Input buffering
// Adding a buffer in frames to make jumping more forgiving
jump_buffer = 10;
// Count placeholder (should be 0 here)
jump_buffer_count = 0;

// Controls
control_left = ord("A");
control_right = ord("D");
control_jump = vk_space;
control_attack = ord("H")


