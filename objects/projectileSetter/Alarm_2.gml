var player = instance_find(obj_dog, 0);

if (player != noone and scr_get_item_level("magic", "weapon") > 0)
{
	repeat (1  + (2 * scr_get_item_level("totem", "upgrade")))
	{
	var target = instance_nearest(player.x, player.y, obj_enemy1);

		if (target != noone)
		{
			var bullet = instance_create_layer(
			    player.x,
			    player.y,
			    "Instances",
			    obj_magic
			);

			bullet.target = target;
			bullet.speed = 4;
			bullet.turn_speed = 5;
		}
	}
}

alarm[2] = (120 / (1 * scr_get_item_level("magic", "weapon")));