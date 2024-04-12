scr_input();

sprite_index = s_idle;

if (pressA or pressD) {
    state = states.run;
    audio_play_sound(sd_walk, 1, false);
} else if (pressSpace) {
    state = states.attack;
} else if (pressW and jumpCount < jumpMax) {
    moveY = -10;
    jumpCount++;
}

moveX = 0;
