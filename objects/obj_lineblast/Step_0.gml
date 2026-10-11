/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 214E1483
/// @DnDArgument : "code" "var player = instance_find(obj_dog, 0);$(13_10)$(13_10)$(13_10)$(13_10)if(player != noone)$(13_10){$(13_10)    x = player.x - 16;$(13_10)    y = player.y;$(13_10)}$(13_10)else$(13_10){$(13_10)    instance_destroy();$(13_10)}"
var player = instance_find(obj_dog, 0);



if(player != noone)
{
    x = player.x - 16;
    y = player.y;
}
else
{
    instance_destroy();
}

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 6154B106
/// @DnDArgument : "alpha" "-(1/60)"
/// @DnDArgument : "alpha_relative" "1"
image_alpha += -(1/60);