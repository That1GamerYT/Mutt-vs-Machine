if (instance_exists(target))
{
    var target_dir = point_direction(x, y, target.x, target.y);

    var difference = angle_difference(direction, target_dir);

    direction -= clamp(difference, -turn_speed, turn_speed);

    image_angle = direction;
}
else
{
    target = instance_nearest(x, y, obj_enemy1);
}