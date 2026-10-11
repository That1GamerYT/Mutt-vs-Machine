/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3C6A6E81
/// @DnDArgument : "xpos" "random_range(-2, 2)"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "random_range(-2,2)"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_coin"
/// @DnDSaveInfo : "objectid" "obj_coin"
instance_create_layer(x + random_range(-2, 2), y + random_range(-2,2), "Instances", obj_coin);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2C4A5421
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_botExplosion"
/// @DnDSaveInfo : "objectid" "obj_botExplosion"
instance_create_layer(x + 0, y + 0, "Instances", obj_botExplosion);