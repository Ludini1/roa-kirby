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

//COOLDOWNS
if (move_cooldown[AT_FSPECIAL] > 0) {
    move_cooldown[AT_FSPECIAL] -= 1;
}
if (move_cooldown[AT_DSPECIAL] > 0) {
    move_cooldown[AT_DSPECIAL] -= 1;
}

if (jetcharge == 100) and ((get_gameplay_time() mod 30) > 20) { //Fully charged
	outline_color = [ 100, 100, 255 ];
	}
else {
	outline_color = [ 0, 0, 0 ];
}
init_shader();

//CLEAR GRABS
if (attack != AT_NSPECIAL) and (attack != AT_NSPECIAL_ORI) and grabbedid != noone {
	grabbedid.grabbed = 0
	grabbedid.visible = true
	grabbedid.state = PS_IDLE
	grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
	grabbedid = noone
}
