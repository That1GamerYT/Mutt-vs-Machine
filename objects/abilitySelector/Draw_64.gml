var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Font2);
// Title
draw_set_color(c_white);

// Card layout settings
var card_w = 200;
var card_h = 180;
var gap_x = 20;
var gap_y = 20;
var max_cols = 4;

var count = array_length(abilities);

// Calculate rows and columns
var cols = min(count, max_cols);
var rows = ceil(count / max_cols);

// Center the entire grid vertically
var total_h = rows * card_h + (rows - 1) * gap_y;
var start_y = (gui_h - total_h) / 1.25;

// Draw each ability card
for (var i = 0; i < count; i++) {
// Determine this card's row and column
var col = i mod max_cols;
var row = i div max_cols;


// Actual number of cards in this row
var cards_in_row = min(max_cols, count - row * max_cols);

// Center each row independently
var row_w = cards_in_row * card_w + (cards_in_row - 1) * gap_x;
var start_x = (gui_w - row_w) / 2;

var card_x = start_x + col * (card_w + gap_x);
var card_y = start_y + row * (card_h + gap_y);

// Card background
draw_set_color(make_color_rgb(50, 60, 75));
draw_sprite_ext(
        Sprite25,
		0,
		card_x,
        card_y,
        1,
        1,
		0,
		c_white,
        1
    );	

// Ability name
draw_set_color(c_white);
draw_text(
    card_x + card_w / 2,
    card_y + 35,
    abilities[i].name
);

// Ability description
draw_text_ext(
    card_x + card_w / 2,
    card_y + 90,
    abilities[i].description,
    18,
    card_w - 20
);

// Select button
draw_set_color(make_color_rgb(70, 130, 90));
draw_rectangle(
    card_x + 20,
    card_y + card_h - 45,
    card_x + card_w - 20,
    card_y + card_h - 10,
    false
);

draw_set_color(c_white);
draw_text(
    card_x + card_w / 2,
    card_y + card_h - 27,
    "SELECT"
);

}

// Reset drawing settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
