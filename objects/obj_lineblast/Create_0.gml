/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C565B9A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)image_xscale = 1 + (0.1 * scr_get_item_level("kibble", "upgrade"));$(13_10)scr_screenshake(8, 10);"
/// @description Execute Code
image_xscale = 1 + (0.1 * scr_get_item_level("kibble", "upgrade"));
scr_screenshake(8, 10);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 55C52747
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);