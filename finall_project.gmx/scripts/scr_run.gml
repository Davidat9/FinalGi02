scr_input();

sprite_index = s1_run_right;

moveX = (pressD - pressA) * spd;

if (pressD + pressA == 0) {
    state = states.idle;
}

if (pressW and jumpCount < jumpMax) {
    moveY = -10;
    jumpCount++;
}

if (pressSpace) {
    state = states.attack;
}
