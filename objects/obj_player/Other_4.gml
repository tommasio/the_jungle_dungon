phy_fixed_rotation=true;


if previous_sound {
	audio_stop_sound(previous_sound);
}


// Prevent player from falling over.
// Disable this if you're making a face dragging game.
if room == Forest
{
	audio_play_sound(forest_sound, 10, false)		
	previous_sound = forest_sound;
 }

if room == Dungeon01
{
	audio_play_sound(cave_sound1, 10, false)	
	previous_sound = cave_sound1
 }

 if room == Dungeon02
{
	audio_play_sound(cavesound02, 10, false)	
	previous_sound = cavesound02
 }
 











