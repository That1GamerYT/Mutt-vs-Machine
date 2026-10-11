/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 036D63AF
/// @DnDArgument : "obj" "obj_dog"
/// @DnDSaveInfo : "obj" "obj_dog"
var l036D63AF_0 = false;l036D63AF_0 = instance_exists(obj_dog);if(l036D63AF_0){	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 3B3BEA87
	/// @DnDParent : 036D63AF
	/// @DnDArgument : "times" "global.enemyRate + (global.enemyRate * scr_get_item_level("paw","upgrade")*0.2)"
	repeat(global.enemyRate + (global.enemyRate * scr_get_item_level("paw","upgrade")*0.2)){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 15A5951D
		/// @DnDParent : 3B3BEA87
		/// @DnDArgument : "var" "temp2"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "3"
		var temp2 = floor(random_range(0, 3 + 1));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01F5DE7C
		/// @DnDParent : 3B3BEA87
		/// @DnDArgument : "var" "temp2"
		if(temp2 == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 373A5ED9
			/// @DnDParent : 01F5DE7C
			/// @DnDArgument : "xpos" "random_range(0, 1300)"
			/// @DnDArgument : "ypos" "760"
			/// @DnDArgument : "objectid" "obj_enemy1"
			/// @DnDSaveInfo : "objectid" "obj_enemy1"
			instance_create_layer(random_range(0, 1300), 760, "Instances", obj_enemy1);}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F950F62
		/// @DnDParent : 3B3BEA87
		/// @DnDArgument : "var" "temp2"
		/// @DnDArgument : "value" "1"
		if(temp2 == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7D289EB3
			/// @DnDParent : 1F950F62
			/// @DnDArgument : "xpos" "1366"
			/// @DnDArgument : "ypos" "random_range(0, 768)"
			/// @DnDArgument : "objectid" "obj_enemy1"
			/// @DnDSaveInfo : "objectid" "obj_enemy1"
			instance_create_layer(1366, random_range(0, 768), "Instances", obj_enemy1);}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2DB1A141
		/// @DnDParent : 3B3BEA87
		/// @DnDArgument : "var" "temp2"
		/// @DnDArgument : "value" "2"
		if(temp2 == 2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 237E28D2
			/// @DnDParent : 2DB1A141
			/// @DnDArgument : "ypos" "random_range(0, 768)"
			/// @DnDArgument : "objectid" "obj_enemy1"
			/// @DnDSaveInfo : "objectid" "obj_enemy1"
			instance_create_layer(0, random_range(0, 768), "Instances", obj_enemy1);}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F9D93B8
		/// @DnDParent : 3B3BEA87
		/// @DnDArgument : "var" "temp2"
		/// @DnDArgument : "value" "3"
		if(temp2 == 3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7794FA5B
			/// @DnDParent : 4F9D93B8
			/// @DnDArgument : "xpos" "random_range(0, 1300)"
			/// @DnDArgument : "ypos" "768"
			/// @DnDArgument : "objectid" "obj_enemy1"
			/// @DnDSaveInfo : "objectid" "obj_enemy1"
			instance_create_layer(random_range(0, 1300), 768, "Instances", obj_enemy1);}}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2DC3518F
	/// @DnDParent : 036D63AF
	/// @DnDArgument : "steps" "150"
	alarm_set(0, 150);}