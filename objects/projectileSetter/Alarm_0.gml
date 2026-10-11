var player = instance_find(obj_dog, 0);

if (player != noone and scr_get_item_level("knife", "weapon") > 0)
{
    var bullet = instance_create_layer(
        player.x,
        player.y,
        "Instances",
        obj_knife
    );

    bullet.direction = point_direction(
        player.x,
        player.y,
        mouse_x,
        mouse_y
    );
	bullet.image_angle = bullet.direction;
    bullet.speed = 8;
	if (scr_get_item_level("totem", "upgrade") == 1)
	{
		bullet = instance_create_layer(
        player.x,
        player.y,
        "Instances",
        obj_knife
	    );

	    bullet.direction = point_direction(
	        player.x,
	        player.y,
	        mouse_x,
	        mouse_y + 45
	    );
		bullet.image_angle = bullet.direction;
	    bullet.speed = 8;
				bullet = instance_create_layer(
        player.x,
        player.y,
        "Instances",
        obj_knife
	    );

	    bullet.direction = point_direction(
	        player.x,
	        player.y,
	        mouse_x,
	        mouse_y - 45
	    );
		bullet.image_angle = bullet.direction;
	    bullet.speed = 8;
	}
}

alarm[0] = (60 / (1 * scr_get_item_level("knife", "weapon")));