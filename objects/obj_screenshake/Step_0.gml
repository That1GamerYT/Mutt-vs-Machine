if (shake_duration > 0) {
    shake_duration--;

    var shake_x = random_range(-shake_intensity, shake_intensity);
    var shake_y = random_range(-shake_intensity, shake_intensity);

    camera_set_view_pos(cam, base_x + shake_x, base_y + shake_y);
}
else {
    camera_set_view_pos(cam, base_x, base_y);
}