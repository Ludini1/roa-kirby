//Double jump turns kirb around
if (jump_pressed and state == PS_DOUBLE_JUMP) {
    if (right_down and -spr_dir) {
        spr_dir = 1;
        
    } else if (left_down and spr_dir) {
        spr_dir = -1;
    }
}