/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 33555028
/// @DnDArgument : "var" "iframe"
/// @DnDArgument : "alarm" "1"
iframe = alarm_get(1);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5CF845DB
/// @DnDArgument : "expr" "iframe <= 0 and !is_invulnerable"
if(iframe <= 0 and !is_invulnerable){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4F8BCA67
	/// @DnDParent : 5CF845DB
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 30);}