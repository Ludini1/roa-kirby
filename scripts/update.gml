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
if (move_cooldown[AT_NSPECIAL_FROG] > 0) {
    move_cooldown[AT_NSPECIAL_FROG] -= 1;
}

if (jetcharge == 100) and ((get_gameplay_time() mod 30) > 20) { //Fully charged
	outline_color = [ 100, 100, 255 ];

	}
else {
	if (needlecharge == 3) and ((get_gameplay_time() mod 30) > 20) { //Fully charged and ranno flavoured
	outline_color = [ 182, 244, 48 ];
	}
	else {
	outline_color = [ 0, 0, 0 ];
	}
}




init_shader();

//CLEAR GRABS
if ((attack == AT_NSPECIAL) or (attack == AT_NSPECIAL_ORI)) and (window == 0) and (grabbedid != noone) {
	grabbedid.grabbed = 0
	grabbedid.visible = true
	grabbedid.state = PS_IDLE
	grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
	grabbedid = noone
}

if (attack == AT_NSPECIAL_ZET) and (window == 0) {
	if get_attack_value(AT_NSPECIAL_ZET,AG_AIR_SPRITE) != ("AT_NSPECIAL_ZETT_CHARGEUP_AIR") {
	reset_attack_value(AT_NSPECIAL_ZET,AG_SPRITE)
	reset_attack_value(AT_NSPECIAL_ZET,AG_AIR_SPRITE)
	}
}
