/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 36ED1CE7
/// @DnDArgument : "expr" "!is_dodging"
if(!is_dodging){	/// @DnDAction : YoYo Games.Movement.move_and_collide
	/// @DnDVersion : 1
	/// @DnDHash : 3785DD5B
	/// @DnDParent : 36ED1CE7
	/// @DnDArgument : "xvel" "2* (1 + (scr_get_item_level("boots", "upgrade") * 0.2))"
	/// @DnDArgument : "object" "noone"
	move_and_collide(2* (1 + (scr_get_item_level("boots", "upgrade") * 0.2)), 0, [noone],4,0,0,-1,-1);}