function scr_slide_transition(_target_room, _direction)
{
    var controller = instance_find(obj_room_transition, 0);

    // If the controller doesn't exist, switch rooms normally.
    if (controller == noone)
    {
        room_goto(_target_room);
        return;
    }

    // Prevent another transition from starting mid-animation.
    if (controller.transitioning)
        return;

    // Store the destination.
    controller.transition_target = _target_room;

    // Initialize the transition.
    controller.transitioning = true;
    controller.transition_phase = 1;
    controller.transition_timer = 0;
	controller.slide_direction = _direction;	

    // Clean up any surfaces left over from an earlier transition.
    if (surface_exists(controller.old_screen))
        surface_free(controller.old_screen);

    if (surface_exists(controller.new_screen))
        surface_free(controller.new_screen);

    // Capture the current screen.
    controller.screen_width = surface_get_width(application_surface);
    controller.screen_height = surface_get_height(application_surface);

    controller.old_screen = surface_create(
        controller.screen_width,
        controller.screen_height
    );

    controller.new_screen = -1;

    if (surface_exists(controller.old_screen))
    {
        surface_set_target(controller.old_screen);
        draw_clear_alpha(c_black, 0);
        draw_surface(application_surface, 0, 0);
        surface_reset_target();
    }
    else
    {
        // Fallback if surface creation fails.
        controller.transitioning = false;
        room_goto(_target_room);
    }
}	