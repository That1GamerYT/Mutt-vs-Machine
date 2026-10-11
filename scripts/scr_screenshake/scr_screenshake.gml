function scr_screenshake(_intensity, _duration) {
    if (instance_exists(obj_screenshake)) {
        with (obj_screenshake) {
            shake_intensity = max(shake_intensity, _intensity);
            shake_duration = max(shake_duration, _duration);
        }
    }
}