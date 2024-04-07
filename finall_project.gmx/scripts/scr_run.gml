scr_input();

sprite_index = s_run;

moveX = (pressD - pressA) * spd;

if (pressD + pressA == 0) {
    state = states.idle;
}

if (pressW and jumpCount < jumpMax) {
    moveY = -20;
    jumpCount++;
}

if (pressSpace) {
    state = states.attack;
}
