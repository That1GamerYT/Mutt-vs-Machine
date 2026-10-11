facing_x = 0;
facing_y = 1;
health = 100;

sprite_index = Sprite2;
image_index = 0;


__dnd_health = real(100);

global.money = 0;

// Four weapon slots
weapons = array_create(global.selected_ability == 4 ?  5 : 4, undefined);
weapons[0] = {
            id: "knife",
            level: 1
        };

// Four upgrade slots
upgrades = array_create(global.selected_ability == 5 ?  5 : 4, undefined);

// One special ability slot
special = undefined;
lifeUsed = false;

// Dodge settings
dodge_speed = 12;
dodge_duration = 12;  // Duration in game steps
dodge_cooldown = 45;  // Time before dodging again

// Dodge state
is_dodging = false;
dodge_timer = 0;
dodge_cooldown_timer = 0;

// Dodge direction
dodge_dir_x = 0;
dodge_dir_y = 0;
is_invulnerable = false;