///@desc health bar

draw_sprite(Health_bar_left,0,healthbar_x,healthbar_y);
draw_sprite_stretched(Health_bar_back,0,healthbar_x,healthbar_y,healthbar_width, healthbar_height);
draw_sprite_stretched(Health_bar,0,healthbar_x,healthbar_y,healthbar_width * (hp/hp_max), healthbar_height);
draw_sprite(Health_bar_right,0,healthbar_x + healthbar_width,healthbar_y);