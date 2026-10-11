/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 3AB31281
/// @DnDArgument : "soundid" "hurt"
/// @DnDSaveInfo : "soundid" "hurt"
audio_play_sound(hurt, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 7BC7F64B
/// @DnDArgument : "var" "temp1"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;var temp1 = __dnd_health;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 5D63FFF0
/// @DnDArgument : "health" "temp1 - (10 - (scr_get_item_level("chainmail", "upgrade")))"
__dnd_health = real(temp1 - (10 - (scr_get_item_level("chainmail", "upgrade"))));

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 299852EA
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 089C469D
	/// @DnDParent : 299852EA
	/// @DnDArgument : "expr" "global.selected_ability == 1 and !lifeUsed"
	if(global.selected_ability == 1 and !lifeUsed){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 365FBBB2
		/// @DnDParent : 089C469D
		/// @DnDArgument : "soundid" "power_up"
		/// @DnDSaveInfo : "soundid" "power_up"
		audio_play_sound(power_up, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 054044AE
		/// @DnDParent : 089C469D
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_healEffect"
		/// @DnDSaveInfo : "objectid" "obj_healEffect"
		instance_create_layer(x + 0, y + 0, "Instances", obj_healEffect);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0FCC72BC
		/// @DnDParent : 089C469D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "lifeUsed"
		lifeUsed = true;
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 6EBA8EC5
		/// @DnDParent : 089C469D
		/// @DnDArgument : "health" "50"
		__dnd_health = real(50);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 066D2F5F
		/// @DnDParent : 089C469D
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 60);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2E77FA11
	/// @DnDParent : 299852EA
	else{	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 521F6542
		/// @DnDParent : 2E77FA11
		/// @DnDArgument : "soundid" "lose"
		/// @DnDSaveInfo : "soundid" "lose"
		audio_play_sound(lose, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 38E4D2B1
		/// @DnDParent : 2E77FA11
		/// @DnDArgument : "xpos" "450"
		/// @DnDArgument : "ypos" "128"
		/// @DnDArgument : "objectid" "obj_gameover"
		/// @DnDSaveInfo : "objectid" "obj_gameover"
		instance_create_layer(450, 128, "Instances", obj_gameover);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 62CE484A
		/// @DnDParent : 2E77FA11
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_grave"
		/// @DnDSaveInfo : "objectid" "obj_grave"
		instance_create_layer(x + 0, y + 0, "Instances", obj_grave);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7329A1B8
		/// @DnDParent : 2E77FA11
		instance_destroy();}}