function scr_get_item_level(item_id, item_type) {
    var player = instance_find(obj_dog, 0);

    
	
if (player == noone) {
        return 0;
    }

    var inventory;

    if (item_type == "weapon") {
        inventory = player.weapons;
    }
    else if (item_type == "upgrade") {
        inventory = player.upgrades;
    }
    else {
        return 0;
    }

    for (var i = 0; i < array_length(inventory); i++) {
        if (!is_undefined(inventory[i])) {
            if (inventory[i].id == item_id) {
                return inventory[i].level;
            }
        }
    }

    return 0;
}