//Double jump turns kirb around
if (jump_pressed and (state == PS_DOUBLE_JUMP) and (prev_djumps != djumps)) {
    if (right_down and -spr_dir) {
        spr_dir = 1;
        prev_djump = djumps;
        
    } else if (left_down and spr_dir) {
        spr_dir = -1;
        prev_djumps = djumps;
    }
}

if (!free) {
    prev_djumps = 0;
}