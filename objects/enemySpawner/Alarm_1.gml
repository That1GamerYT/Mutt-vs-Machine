/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4C5FE83F
/// @DnDArgument : "obj" "obj_dog"
/// @DnDSaveInfo : "obj" "obj_dog"
var l4C5FE83F_0 = false;l4C5FE83F_0 = instance_exists(obj_dog);if(l4C5FE83F_0){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 61C09FDF
	/// @DnDParent : 4C5FE83F
	/// @DnDArgument : "value" "global.wave * 25"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "money"
	global.money += global.wave * 25;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3614E85D
	/// @DnDParent : 4C5FE83F
	/// @DnDArgument : "expr" "scr_get_item_level("paw", "upgrade") != 0"
	if(scr_get_item_level("paw", "upgrade") != 0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 6B11A758
		/// @DnDParent : 3614E85D
		/// @DnDArgument : "value" ""
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "money"
		global.money += 0}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 682BF38E
	/// @DnDParent : 4C5FE83F
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)scr_slide_transition(shop, 1);"
	/// @description Execute Code
	scr_slide_transition(shop, 1);}