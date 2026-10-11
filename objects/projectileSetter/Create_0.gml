/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3AA5537C
/// @DnDInput : 6
/// @DnDArgument : "steps" "(60 / (1 * scr_get_item_level("knife", "weapon")))"
/// @DnDArgument : "steps_1" "(240 / (1 * scr_get_item_level("emp", "weapon")))"
/// @DnDArgument : "steps_2" "(120 / (1 * scr_get_item_level("magic", "weapon")))"
/// @DnDArgument : "steps_3" "(150 / (1 * scr_get_item_level("missile", "weapon")))"
/// @DnDArgument : "steps_4" "(140 / (1 * scr_get_item_level("bone", "weapon")))"
/// @DnDArgument : "steps_5" "(300 / (1 * scr_get_item_level("lineblast", "weapon")))"
/// @DnDArgument : "alarm_1" "1"
/// @DnDArgument : "alarm_2" "2"
/// @DnDArgument : "alarm_3" "3"
/// @DnDArgument : "alarm_4" "4"
/// @DnDArgument : "alarm_5" "5"
alarm_set(0, (60 / (1 * scr_get_item_level("knife", "weapon"))));
alarm_set(1, (240 / (1 * scr_get_item_level("emp", "weapon"))));
alarm_set(2, (120 / (1 * scr_get_item_level("magic", "weapon"))));
alarm_set(3, (150 / (1 * scr_get_item_level("missile", "weapon"))));
alarm_set(4, (140 / (1 * scr_get_item_level("bone", "weapon"))));
alarm_set(5, (300 / (1 * scr_get_item_level("lineblast", "weapon"))));