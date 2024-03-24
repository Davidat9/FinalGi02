scr_input();

sprite_index = s_king_jump;

if (place_meeting(x , y + moveY, o_solid)) {
    repeat(abs(moveY)) {
        if (!place_meeting(x, y + sign(moveY), o_solid)) {
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