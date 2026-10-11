var player = instance_find(obj_dog, 0);



if(player != noone)
{
    x = player.x + 8;
    y = player.y + 16;
}
else
{
    instance_destroy();
}