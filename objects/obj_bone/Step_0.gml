
// Find the player if necessary
if (!instance_exists(player)) {
    player = instance_find(obj_dog, 0);
}

if (instance_exists(player)) {
    // Advance the swing
    swing_angle += swing_speed * swing_direction;

    // Reverse direction at the ends of the swing
    if (swing_angle >= -90 + swing_range) {
        instance_destroy();
    }

    // Position the bat around the player
    x = player.x + 32;
    y = player.y + 32;

    // Rotate the sprite along with the swing
    image_angle = swing_angle;
}

