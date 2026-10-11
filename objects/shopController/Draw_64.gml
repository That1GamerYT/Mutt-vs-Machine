var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();


// Title
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Currency
var player = instance_find(obj_dog, 0);
draw_set_font(Font1);
if (player != noone) {
    draw_text(
        gui_w / 6.5,
        90,
        string(global.money)
    );
	
// =====================================
// PLAYER INVENTORY PANEL
// =====================================
	draw_set_font(Font2);
if (player != noone) {

    var panel_x = 20;
    var panel_y = 180;
    var panel_w = 250;
    var panel_h = 400;

    // Panel background
    draw_set_color(make_color_rgb(35, 40, 50));
    draw_sprite_ext(
		Sprite22,
		0,
        panel_x,
        panel_y,
        1,
        1,
		0,
		c_white,
        1
    );

    // Panel title
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    

    // ---------------------------------
    // WEAPONS
    // ---------------------------------

    draw_set_halign(fa_left);

	// Count occupied weapon slots
	var weapon_count = 0;

	for (var i = 0; i < array_length(player.weapons); i++) {
	    if (!is_undefined(player.weapons[i])) {
	        weapon_count++;
	    }
	}

	// Display weapon count
	draw_text(
	    panel_x + 30,
	    panel_y + 120,
	    "Weapons (" + string(weapon_count) + "/" +
	    string(array_length(player.weapons)) + ")"
	);


    var text_y = panel_y + 150;

    for (var i = 0; i < array_length(player.weapons); i++) {

        var weapon = player.weapons[i];

        if (!is_undefined(weapon)) {

            // Find the item's display name
            var display_name = weapon.id;

            for (var j = 0; j < array_length(item_database); j++) {
                if (item_database[j].id == weapon.id) {
                    display_name = item_database[j].name;
                    break;
                }
            }
            // Check whether the weapon is max level
			var level_text = "Lv. " + string(weapon.level);

			for (var j = 0; j < array_length(item_database); j++) {
			    if (item_database[j].id == weapon.id) {
			        if (weapon.level >= item_database[j].max_level) {
			            level_text = "MAX LEVEL";
			        }
			        break;
			    }
			}

			draw_text(
			    panel_x + 30,
			    text_y,
			    display_name + " " + level_text
			);

            text_y += 25;
        }
    }

    // ---------------------------------
    // UPGRADES
    // ---------------------------------

    text_y += 15;

	// Count occupied upgrade slots
	var upgrade_count = 0;

	for (var i = 0; i < array_length(player.upgrades); i++) {
	    if (!is_undefined(player.upgrades[i])) {
	        upgrade_count++;
	    }
	}

	// Display upgrade count
	draw_text(
	    panel_x + 30,
	    text_y,
	    "Upgrades (" + string(upgrade_count) + "/" +
	    string(array_length(player.upgrades)) + ")"
	);

    text_y += 30;

    for (var i = 0; i < array_length(player.upgrades); i++) {

        var upgrade = player.upgrades[i];

        if (!is_undefined(upgrade)) {

            // Find the item's display name
            var display_name = upgrade.id;

            for (var j = 0; j < array_length(item_database); j++) {
                if (item_database[j].id == upgrade.id) {
                    display_name = item_database[j].name;
                    break;
                }
            }

            // Check whether the upgrade is max level
			var level_text = "Lv. " + string(upgrade.level);

			for (var j = 0; j < array_length(item_database); j++) {
			    if (item_database[j].id == upgrade.id) {
			        if (upgrade.level >= item_database[j].max_level) {
			            level_text = "MAX LEVEL";
			        }
			        break;
			    }
			}

			draw_text(
			    panel_x + 30,
			    text_y,
			    display_name + " " + level_text
			);

			text_y += 25;
		}
    }
}

// Draw four item cards
var card_w = 180;
var card_h = 220;
var gap = 20;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var total_w = card_w * 4 + gap * 3;
var start_x = (gui_w - total_w) / 2;


for (var i = 0; i < 4; i++) {
    var card_x = start_x + i * (card_w + gap);
    var item = shop_offers[i];
	var bob_offset = sin(bob_timer * 0.05 + i * 1.5) * 5;
	var card_y = 300 + bob_offset;
    // Skip offers that have already been purchased
    if (is_undefined(item)) {
        continue;
    }

    // Card background
    draw_set_color(make_color_rgb(50, 60, 75));
	if item.type == ("weapon"){
    draw_sprite_ext(
        Sprite24,
		0,
		card_x,
        card_y,
        1,
        1,
		0,
		c_white,
        1
    );
	}
	else
	{
	    draw_sprite_ext(
        Sprite23,
		0,
		card_x,
        card_y,
        1,
        1,
		0,
		c_white,
        1
    );	
	}
    // Item name
    draw_set_color(c_white);

    draw_text(
        card_x + card_w / 2,
        card_y + 60,
        item.name
    );

    // Description
	draw_text_ext(
	    card_x + card_w / 2,
	    card_y + 105,
	    item.description,
	    16,
	    card_w - 40
	);

// Calculate the item's current level
var current_level = 0;

if (player != noone) {
    if (item.type == "weapon") {
        var inventory = player.weapons;

        for (var j = 0; j < array_length(inventory); j++) {
            if (!is_undefined(inventory[j]) &&
                inventory[j].id == item.id) {
                current_level = inventory[j].level;
                break;
            }
        }
    }
    else if (item.type == "upgrade") {
        var inventory = player.upgrades;

        for (var j = 0; j < array_length(inventory); j++) {
            if (!is_undefined(inventory[j]) &&
                inventory[j].id == item.id) {
                current_level = inventory[j].level;
                break;
            }
        }
    }
}


// Check whether this item can be purchased
var can_buy = true;
var inventory_full = false;

if (player != noone) {
    var inventory;

    if (item.type == "weapon") {
        inventory = player.weapons;
    }
    else {
        inventory = player.upgrades;
    }

    // Check whether the item is already owned
    var item_owned = (current_level > 0);

    // Check whether the relevant inventory is full
    var occupied_slots = 0;

    for (var j = 0; j < array_length(inventory); j++) {
        if (!is_undefined(inventory[j])) {
            occupied_slots++;
        }
    }

    inventory_full = (occupied_slots >= array_length(inventory));

    // A full inventory only blocks new items, not existing ones
    if (inventory_full && !item_owned) {
        can_buy = false;
    }
}

// Calculate the item's price
var price = scr_get_item_price(item, current_level);

// Draw price or inventory warning
if (can_buy) {
    draw_set_color(c_yellow);

    draw_text(
        card_x + card_w / 2,
        card_y + 170,
        string(price) + " Gold"
    );

    // Purchase button
    draw_set_color(make_color_rgb(70, 140, 80));

    draw_rectangle(
        card_x + 20,
        485,
        card_x + card_w - 20,
        515,
        false
    );

    draw_set_color(c_white);

    draw_text(
        card_x + card_w / 2,
        500,
        "BUY"
    );
}
else {
    // Show warning instead of the purchase button
    draw_set_color(make_color_rgb(190, 65, 65));

    draw_rectangle(
        card_x + 10,
		485,
        card_x + card_w - 10,
        515,
        false
    );

    draw_set_color(c_white);

    draw_text(
        card_x + card_w / 2,
        500,
        "INVENTORY FULL"
    );
}
}
// Restore default alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
}