var player = instance_find(obj_dog, 0);

if (player != noone and scr_get_item_level("emp", "weapon") > 0)
{
    var bullet = instance_create_layer(
        player.x - 64,
        player.y,
        "Instances",
        obj_emp
    );
}

alarm[1] = (240 / (1 * scr_get_item_level("emp", "weapon")));