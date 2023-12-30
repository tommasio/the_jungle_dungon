hsp = 0;
vsp = 0;
_is_on_grass = false;


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
y_force_from_enemy = 700;


// How fast player can move (pixels/second)
max_x_speed = 4;
// Jumping is limited by y_force and gravity room setting

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

// Prevent player from falling over.
// Disable this if you're making a face dragging game.
phy_fixed_rotation=true;
if room_exists(Forest)
{
    audio_play_sound(forest_sound, 10, true);
}