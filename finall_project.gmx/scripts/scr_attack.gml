scr_input();

sprite_index = s1_atack;
image_speed = 2/3;

attackCount += 1;
if (attackCount == 6) {
    if (image_xscale > 0) {
        instance_create(player.x + 20, player.y - 30, damage);
    } else if (image_xscale < 0) {
        instance_create(player.x - 50, player.y - 30, damage);
    }
    
    attackCount = 0;
    state = states.idle;
}