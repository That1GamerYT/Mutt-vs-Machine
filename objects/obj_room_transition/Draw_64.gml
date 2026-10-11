
if (transitioning)
{
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    // Draw a black background behind the transition.
    draw_set_color(c_black);
    draw_set_alpha(1);
    draw_rectangle(0, 0, gui_w, gui_h, false);

    // PHASE 1: Slide the old room to the left.
    if (transition_phase == 1)
    {
        var progress = clamp(
            transition_timer / (transition_duration / 2),
            0,
            1
        );

        var old_x = -gui_w * progress * slide_direction;;

        if (surface_exists(old_screen))
        {
            draw_surface_stretched(
                old_screen,
                old_x,
                0,
                gui_w,
                gui_h
            );
        }
    }

    // PHASE 2: Capture the destination room.
    else if (transition_phase == 2)
    {
        if (surface_exists(application_surface))
        {
            new_screen = surface_create(
                surface_get_width(application_surface),
                surface_get_height(application_surface)
            );

            if (surface_exists(new_screen))
            {
                surface_set_target(new_screen);
                draw_clear_alpha(c_black, 0);
                draw_surface(application_surface, 0, 0);
                surface_reset_target();

                // The next frame begins the incoming slide.
                transition_phase = 3;
                transition_timer = 0;
            }
            else
            {
                // Avoid getting stuck if the surface cannot be created.
                transitioning = false;
                transition_phase = 0;
            }
        }
    }

    // PHASE 3: Slide the new room in from the right.
    else if (transition_phase == 3)
    {
        var progress = clamp(
            transition_timer / (transition_duration / 2),
            0,
            1
        );

        var new_x = gui_w * (1 - progress) * slide_direction;;

        if (surface_exists(new_screen))
        {
            draw_surface_stretched(
                new_screen,
                new_x,
                0,
                gui_w,
                gui_h
            );
        }
    }

    draw_set_alpha(1);
    draw_set_color(c_white);
}