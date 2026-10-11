function scr_find_enemy_group(_origin_x, _origin_y) {
    var enemy_count = instance_number(obj_enemy1);

    var search_radius = 150;
    var best_score = 0;

    // Default destination
    var target_x = _origin_x;
    var target_y = _origin_y;

    // Find the densest group of enemies
    for (var i = 0; i < enemy_count; i++) {
        var enemy = instance_find(obj_enemy1, i);

        if (instance_exists(enemy)) {
            var group_x = 0;
            var group_y = 0;
            var group_count = 0;

            for (var j = 0; j < enemy_count; j++) {
                var gother = instance_find(obj_enemy1, j);

                if (instance_exists(gother)) {
                    if (point_distance(
                        enemy.x, enemy.y,
                        gother.x, gother.y
                    ) <= search_radius) {
                        group_x += gother.x;
                        group_y += gother.y;
                        group_count++;
                    }
                }
            }

            if (group_count > best_score) {
                best_score = group_count;

                target_x = group_x / group_count;
                target_y = group_y / group_count;
            }
        }
    }

    // No enemies? Pick a random destination.
    if (enemy_count == 0) {
        target_x = _origin_x + random_range(-200, 200);
        target_y = _origin_y + random_range(-200, 200);
    }

    return {
        x: target_x,
        y: target_y
    };
}