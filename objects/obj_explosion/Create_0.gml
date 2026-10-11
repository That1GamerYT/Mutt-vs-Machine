/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 21A75DD7
/// @DnDArgument : "soundid" "explosion_medium"
/// @DnDSaveInfo : "soundid" "explosion_medium"
audio_play_sound(explosion_medium, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C6589D0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)image_xscale = 1 + (0.1 * scr_get_item_level("kibble", "upgrade"));$(13_10)scr_screenshake(8, 10);"
/// @description Execute Code
image_xscale = 1 + (0.1 * scr_get_item_level("kibble", "upgrade"));
scr_screenshake(8, 10);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 20BF1FDC
alarm_set(0, 30);