// Convert remaining steps into seconds
var seconds_left = ceil(alarm_get(1) / 60);

// Format as MM:SS
var minutes = floor(seconds_left / 60);
var seconds = seconds_left mod 60;

var timer_text = "";

if (seconds < 10) {
    timer_text += "0";
}

timer_text += string(seconds);

// Draw timer background
var gui_w = display_get_gui_width();
draw_set_font(Font1);
draw_set_color(make_color_rgb(35, 40, 50));

draw_sprite_ext(
	Sprite21,
	0,
    gui_w / 2,
    70,
	4,
    4,
	0,
    c_white,
	1
);

// Draw timer text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(
    gui_w / 2,
    70,
    timer_text
);

// Restore drawing settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

var wave_text = string(global.wave);

draw_set_font(Font1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Background panel
draw_sprite_ext(
        Sprite26,
		0,
		0,
        0,
        1,
        1,
		0,
		c_white,
        1
    );	


// Wave counter
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(200, 40, wave_text);

// Reset drawing settings
draw_set_color(c_white);
draw_set_alpha(1);