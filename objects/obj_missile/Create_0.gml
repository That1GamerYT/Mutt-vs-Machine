// Find the initial target
image_xscale = 1 + (0.1 * scr_get_item_level("kibble", "upgrade"));
var target = scr_find_enemy_group(x, y);

target_x = target.x;
target_y = target.y;

// Save the launch position
start_x = x;
start_y = y;

// Choose how high the missile launches
arc_height = random_range(150, 250);

// Flight settings
travel_time = 30;
travel_progress = 0;

// The missile spends half its flight climbing
apex_progress = 0.5;

// Retargeting settings
retarget_timer = 0;
retarget_interval = 5;

// Save the original position for sprite rotation
xprevious = x;
yprevious = y;