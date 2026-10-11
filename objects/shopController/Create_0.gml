item_database = scr_item_database();
shop_offers = array_create(4, undefined);
bob_timer = 0;
// Find the player
var player = instance_find(obj_dog, 0);

// Check whether the inventories are full
var weapons_full = false;
var upgrades_full = false;

if (player != noone) {
weapons_full = true;
upgrades_full = true;


for (var i = 0; i < array_length(player.weapons); i++) {
    if (is_undefined(player.weapons[i])) {
        weapons_full = false;
        break;
    }
}

for (var i = 0; i < array_length(player.upgrades); i++) {
    if (is_undefined(player.upgrades[i])) {
        upgrades_full = false;
        break;
    }
}


}

// Build a list of items that can still be purchased
var available_items = [];

for (var i = 0; i < array_length(item_database); i++) {
var item = item_database[i];
var current_level = 0;
var item_owned = false;


// Find the player's current level of this item
if (player != noone) {
    var inventory;

    if (item.type == "weapon") {
        inventory = player.weapons;
    }
    else if (item.type == "upgrade") {
        inventory = player.upgrades;
    }
    else {
        continue;
    }

    for (var j = 0; j < array_length(inventory); j++) {
        if (!is_undefined(inventory[j])
        && inventory[j].id == item.id) {
            current_level = inventory[j].level;
            item_owned = true;
            break;
        }
    }
}

// Exclude new weapons when the weapon inventory is full
if (weapons_full && item.type == "weapon" && !item_owned) {
    continue;
}

// Exclude new upgrades when the upgrade inventory is full
if (upgrades_full && item.type == "upgrade" && !item_owned) {
    continue;
}

// Only include items that haven't reached max level
if (current_level < item.max_level) {
    array_push(available_items, item);
}


}

// Randomly select up to four unique offers
var available_count = array_length(available_items);

for (var i = 0; i < min(4, available_count); i++) {
var index = irandom(array_length(available_items) - 1);


shop_offers[i] = available_items[index];

// Remove the selected item so it cannot appear twice
array_delete(available_items, index, 1);


}
