/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B32E54D
/// @DnDArgument : "code" "var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));$(13_10)var move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));$(13_10)$(13_10)if (move_x != 0 || move_y != 0)$(13_10){$(13_10)    facing_x = move_x;$(13_10)    facing_y = move_y;$(13_10)}$(13_10)$(13_10)// Activate dodge when Space is pressed$(13_10)if (keyboard_check_pressed(vk_space)$(13_10)&& !is_dodging$(13_10)&& dodge_cooldown_timer <= 0 && global.selected_ability == 0) {$(13_10)$(13_10)    // Determine dodge direction from WASD input$(13_10)    var input_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));$(13_10)    var input_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));$(13_10)$(13_10)    // Only dodge if a direction is pressed$(13_10)    if (input_x != 0 || input_y != 0) {$(13_10)        // Normalize direction to prevent faster diagonal dodges$(13_10)        var length = point_distance(0, 0, input_x, input_y);$(13_10)$(13_10)        dodge_dir_x = input_x / length;$(13_10)        dodge_dir_y = input_y / length;$(13_10)$(13_10)        // Start dodge$(13_10)        is_dodging = true;$(13_10)        dodge_timer = dodge_duration;$(13_10)        dodge_cooldown_timer = dodge_cooldown;$(13_10)$(13_10)        // Enable invincibility$(13_10)        is_invulnerable = true;$(13_10)    }$(13_10)}$(13_10)$(13_10)// Update cooldown$(13_10)if (dodge_cooldown_timer > 0) {$(13_10)    dodge_cooldown_timer--;$(13_10)}$(13_10)$(13_10)// Move while dodging$(13_10)if (is_dodging) {$(13_10)    x += dodge_dir_x * dodge_speed;$(13_10)    y += dodge_dir_y * dodge_speed;$(13_10)$(13_10)    dodge_timer--;$(13_10)$(13_10)    if (dodge_timer <= 0) {$(13_10)        is_dodging = false;$(13_10)        is_invulnerable = false;$(13_10)    }$(13_10)}"
var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (move_x != 0 || move_y != 0)
{
    facing_x = move_x;
    facing_y = move_y;
}

// Activate dodge when Space is pressed
if (keyboard_check_pressed(vk_space)
&& !is_dodging
&& dodge_cooldown_timer <= 0 && global.selected_ability == 0) {

    // Determine dodge direction from WASD input
    var input_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var input_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

    // Only dodge if a direction is pressed
    if (input_x != 0 || input_y != 0) {
        // Normalize direction to prevent faster diagonal dodges
        var length = point_distance(0, 0, input_x, input_y);

        dodge_dir_x = input_x / length;
        dodge_dir_y = input_y / length;

        // Start dodge
        is_dodging = true;
        dodge_timer = dodge_duration;
        dodge_cooldown_timer = dodge_cooldown;

        // Enable invincibility
        is_invulnerable = true;
    }
}

// Update cooldown
if (dodge_cooldown_timer > 0) {
    dodge_cooldown_timer--;
}

// Move while dodging
if (is_dodging) {
    x += dodge_dir_x * dodge_speed;
    y += dodge_dir_y * dodge_speed;

    dodge_timer--;

    if (dodge_timer <= 0) {
        is_dodging = false;
        is_invulnerable = false;
    }
}

/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 3E18C3B8
if(room == room_last){	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 0A97E538
	/// @DnDParent : 3E18C3B8
	/// @DnDArgument : "alpha" "0"
	image_alpha = 0;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 41C9063C
else{	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 0BE035CB
	/// @DnDParent : 41C9063C
	image_alpha = 1;}