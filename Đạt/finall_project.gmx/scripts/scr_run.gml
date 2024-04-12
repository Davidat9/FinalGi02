scr_input();

sprite_index = s_run;

moveX = (pressD - pressA) * spd;

if (pressD + pressA == 0) {
    state = states.idle;
    audio_pause_sound(sd_walk);
}

if (pressW and jumpCount < jumpMax) {
    moveY = -10;
    jumpCount++;
}

if (pressSpace) {
    state = states.attack;
}
