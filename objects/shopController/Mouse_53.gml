var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

show_debug_message("Mouse clicked at: " + string(mx) + ", " + string(my));

var card_w = 180;
var gap = 20;
var total_w = card_w * 4 + gap * 3;
var start_x = (display_get_gui_width() - total_w) / 2;
var card_y = 300;

for (var i = 0; i < 4; i++) {
    var card_x = start_x + i * (card_w + gap);

    var button_left = card_x + 20;
    var button_right = card_x + card_w - 20;
    var button_top = 485;
    var button_bottom = 515;

    if (mx >= button_left && mx <= button_right &&
        my >= button_top && my <= button_bottom) {

        show_debug_message("BUY BUTTON " + string(i + 1) + " CLICKED");

        var item = shop_offers[i];

        if (is_undefined(item)) {
            show_debug_message("This offer is empty.");
        }
        else {
            show_debug_message("Attempting to buy: " + item.name);

            var result = scr_buy_item(item);

            show_debug_message("Purchase result: " + string(result));

            if (result) {
                shop_offers[i] = undefined;
				audio_play_sound(coin_3, 1, false);
                show_debug_message("Purchase successful!");
            }
            else {
				audio_play_sound(cancel, 1, false);
                show_debug_message("Purchase rejected.");
            }
        }

        break;
    }
}