/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A34DF31
/// @DnDArgument : "code" "var player = instance_find(obj_dog, 0);$(13_10)$(13_10)if (player != noone)$(13_10){$(13_10)    direction = point_direction(x, y, player.x, player.y);$(13_10)    speed = 2;$(13_10)}$(13_10)"
var player = instance_find(obj_dog, 0);

if (player != noone)
{
    direction = point_direction(x, y, player.x, player.y);
    speed = 2;
}