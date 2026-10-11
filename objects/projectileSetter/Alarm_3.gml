var player = instance_find(obj_dog, 0);

if (player != noone and scr_get_item_level("missile", "weapon") > 0)
{
	repeat (1  + (2 * scr_get_item_level("totem", "upgrade")))
	{
	    var bullet = instance_create_layer(
        player.x,
        player.y,
        "Instances",
        obj_missile
		);
	}
}

alarm[3] = (150 / (1 * scr_get_item_level("missile", "weapon")));