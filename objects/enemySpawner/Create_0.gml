/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 79259EE3
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "wave"
global.wave += 1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6BF60826
/// @DnDArgument : "value" "floor(global.wave/2)"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "enemyRate"
global.enemyRate += floor(global.wave/2);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4CC62F85
/// @DnDInput : 2
/// @DnDArgument : "steps" "150"
/// @DnDArgument : "steps_1" "1800"
/// @DnDArgument : "alarm_1" "1"
alarm_set(0, 150);
alarm_set(1, 1800);