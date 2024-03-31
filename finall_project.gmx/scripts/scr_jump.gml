scr_input();

sprite_index = s1_jump;

if (place_meeting(x , y + moveY, solid)) {
    repeat(abs(moveY)) {
        if (!place_meeting(x, y + sign(moveY), solid)) {
            y += sign(moveY);
        }
        
        break;
    }
    
    state = states.idle;
}

if (pressSpace) {
    state = states.attack;
}

if (pressD) {
    moveX = spd - 1;
    if (pressSpace) {
        state = states.attack;
    }
}

if (pressA) {
    moveX = 1 - spd;
    if (pressSpace) {
        state = states.attack;
    }
}
