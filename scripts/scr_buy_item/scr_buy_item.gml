
function scr_buy_item(item) {
    // Reject invalid items
	if (is_undefined(item)) {
	    show_debug_message("FAILED: Item is undefined");
	    return false;
	}

	if (!variable_struct_exists(item, "id") ||
	    !variable_struct_exists(item, "type") ||
	    !variable_struct_exists(item, "max_level") ||
	    !variable_struct_exists(item, "base_price")) {

	    show_debug_message("FAILED: Item is missing required fields");
	    return false;
	}

    // Find the player
	var player = instance_find(obj_dog, 0);

	if (player == noone) {
	    show_debug_message("FAILED: Player not found.");
	    return false;
	}

    // Select the appropriate inventory
    var inventory;

    if (item.type == "weapon") {
        inventory = player.weapons;
    }
    else if (item.type == "upgrade") {
        inventory = player.upgrades;
    }
	else {
	    show_debug_message("FAILED: Unknown item type: " + string(item.type));
	    return false;
	}

    // Find an existing copy of the item
    var found_slot = -1;
    var current_level = 0;

    for (var i = 0; i < array_length(inventory); i++) {
        if (!is_undefined(inventory[i]) &&
            inventory[i].id == item.id) {

            found_slot = i;
            current_level = inventory[i].level;
            break;
        }
    }

    // Check the level cap
	if (found_slot != -1 && current_level >= item.max_level) {
	    show_debug_message("FAILED: Item already at maximum level.");
	    return false;
	}

    // Find an empty slot if this is a new item
    if (found_slot == -1) {
        for (var i = 0; i < array_length(inventory); i++) {
            if (is_undefined(inventory[i])) {
                found_slot = i;
                break;
            }
        }

        // Inventory is full
		if (found_slot == -1) {
		    show_debug_message("FAILED: Inventory is full.");
		    return false;
		}
    }

    // Calculate the price
    var price = scr_get_item_price(item, current_level);

    // Check available money
	if (global.money < price) {
	    show_debug_message(
	        "FAILED: Not enough money. Have " +
	        string(global.money) +
	        ", need " +
	        string(price)
	    );
	    return false;
	}

    // Charge the player
    global.money -= price;

    // Upgrade the existing item or add a new one
    if (current_level > 0) {
        inventory[found_slot].level += 1;
    }
    else {
        inventory[found_slot] = {
            id: item.id,
            level: 1
        };
    }

    // Save the updated inventory
    if (item.type == "weapon") {
        player.weapons = inventory;
    }
    else {
        player.upgrades = inventory;
    }

    return true;
}

