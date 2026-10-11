var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Card layout settings — keep these consistent with Draw GUI
var card_w = 200;
var card_h = 180;
var gap_x = 20;
var gap_y = 20;
var max_cols = 4;

var count = array_length(abilities);

var cols = min(count, max_cols);
var rows = ceil(count / max_cols);

// Calculate vertical position
var total_h = rows * card_h + (rows - 1) * gap_y;
var start_y = (gui_h - total_h) / 1.25;

// Mouse position in GUI coordinates
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Check each ability card's Select button
for (var i = 0; i < count; i++) {
var col = i mod max_cols;
var row = i div max_cols;


// Number of cards in this row
var cards_in_row = min(max_cols, count - row * max_cols);

// Center this row
var row_w = cards_in_row * card_w + (cards_in_row - 1) * gap_x;
var start_x = (gui_w - row_w) / 2;

var card_x = start_x + col * (card_w + gap_x);
var card_y = start_y + row * (card_h + gap_y);

// Select button boundaries
var button_left = card_x + 20;
var button_right = card_x + card_w - 20;
var button_top = card_y + card_h - 45;
var button_bottom = card_y + card_h - 10;

// Did the player click this button?
if (mx >= button_left && mx <= button_right
&& my >= button_top && my <= button_bottom) {
    global.selected_ability = i;
	audio_play_sound(coin_3, 1, false);
    // Start the gameplay room
    scr_slide_transition(Room1, -1);
    break;
}


}
