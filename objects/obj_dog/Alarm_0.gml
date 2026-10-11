/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3C96FD31
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_knife"
/// @DnDSaveInfo : "objectid" "obj_knife"
instance_create_layer(x + 0, y + 0, "Instances", obj_knife);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7A9455FD
alarm_set(0, 30);