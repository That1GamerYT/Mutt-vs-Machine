/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 71CBF20C
/// @DnDArgument : "not" "1"
if(room != room_last){	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
	/// @DnDVersion : 1
	/// @DnDHash : 7C125F8B
	/// @DnDParent : 71CBF20C
	/// @DnDArgument : "x1" "10"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "75"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "50"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "80"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "backcol" "$FF999999"
	/// @DnDArgument : "barcol" "$FF000000"
	/// @DnDArgument : "mincol" "$FF0000FF"
	/// @DnDArgument : "maxcol" "$FF00FF15"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;draw_healthbar(x + 10, y + 75, x + 50, y + 80, __dnd_health, $FF999999, $FF0000FF & $FFFFFF, $FF00FF15 & $FFFFFF, 0, (($FF999999>>24) != 0), (($FF000000>>24) != 0));}