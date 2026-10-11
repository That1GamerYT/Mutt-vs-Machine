if (transitioning)
{
    transition_timer++;

    // PHASE 1: Slide the current room away.
    if (transition_phase == 1)
    {
        if (transition_timer >= transition_duration / 2)
        {
            transition_timer = 0;
            transition_phase = 2;

            // Switch to the destination room.
            room_goto(transition_target);
        }
    }

    // PHASE 3: Slide the new room into place.
    else if (transition_phase == 3)
    {
        if (transition_timer >= transition_duration / 2)
        {
            transition_timer = 0;
            transition_phase = 0;
            transitioning = false;

            // Release the captured screens.
            if (surface_exists(old_screen))
                surface_free(old_screen);

            if (surface_exists(new_screen))
                surface_free(new_screen);

            old_screen = -1;
            new_screen = -1;
            transition_target = -1;
        }
    }
}