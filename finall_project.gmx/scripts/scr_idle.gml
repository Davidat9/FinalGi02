scr_input();

sprite_index = s_idle;

if (pressA or pressD) {
    state = states.run;
} else if (pressSpace) {
    state = states.attack;
} else if (pressW and jumpCount < jumpMax) {
    moveY = -20;
    jumpCount++;
}

moveX = 0;
