var player = instance_find(obj_dog, 0);

if (player != noone and scr_get_item_level("lineblast", "weapon") > 0)
{
    var bullet = instance_create_layer(
        player.x - 32,
        player.y,
        "Instances",
        obj_lineblast
    );
}

alarm[5] = (300 / (1 * scr_get_item_level("lineblast", "weapon")));