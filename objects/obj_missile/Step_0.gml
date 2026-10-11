// Update the target periodically
retarget_timer++;

if (retarget_timer >= retarget_interval) {
    retarget_timer = 0;

    var target = scr_find_enemy_group(x, y);

    target_x = target.x;
    target_y = target.y;
}

// Advance the flight
travel_progress += 1 / travel_time;

if (travel_progress >= 1) {
    // Explode at the target
    instance_create_layer(target_x, target_y, layer, obj_explosion);
    instance_destroy();
}
else {
    // Remember the previous position for rotation
    var old_x = x;
    var old_y = y;

    // Calculate horizontal movement
    x = lerp(start_x, target_x, travel_progress);

    // First half: climb toward the apex
    if (travel_progress < apex_progress) {
        var climb_progress = travel_progress / apex_progress;

        y = lerp(start_y, start_y - arc_height, climb_progress);
    }
    // Second half: descend toward the target
    else {
        var descent_progress =
            (travel_progress - apex_progress) / (1 - apex_progress);

        y = lerp(start_y - arc_height, target_y, descent_progress);
    }

    // Rotate based on the missile's actual movement
	var dx = x - old_x;
	var dy = y - old_y;

	// GameMaker's Y coordinates increase downward
	image_angle = point_direction(0, 0, dx, dy) - 90;
	}
	