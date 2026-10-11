/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2496476A
/// @DnDArgument : "soundid" "whoosh_1"
/// @DnDSaveInfo : "soundid" "whoosh_1"
audio_play_sound(whoosh_1, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D0D01D1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)image_xscale = 1 + (0.1 * scr_get_item_level("kibble", "upgrade"));"
/// @description Execute Code
image_xscale = 1 + (0.1 * scr_get_item_level("kibble", "upgrade"));