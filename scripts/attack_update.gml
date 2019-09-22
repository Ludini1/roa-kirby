//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 3){
        if (special_pressed){
            window = 1;
            window_timer = 0;
        }
    }
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}
//DSPECIAL charging
if (attack == AT_DSPECIAL){
	if (window == 4) and (window_timer > 10) { //IASA on fullcharge usage
	iasa_script();
	}
	if (shield_pressed and (window < 4)){ //SHIELD CANCEL
		window = 5;
		window_timer = 9;
		}
    if (window == 2){ //CHARGING
		if (100 > jetcharge) {
		jetcharge += 1;
		}
        if (window_timer == 15){ //Loop
			if (special_down) {
	        window_timer = 0;
            destroy_hitboxes();
			}
			else { //End
			window = 5;
			window_timer = 0;
			}
	    }
	if (window == 3) { //MEDIUM CHARGE (not implemented)
	window = 5;
	window_timer = 0;
	}
	
    }
}

//FSPECIAL cooldown
if (attack == AT_FSPECIAL) and (window == 3) and (window_timer == 7) { //Cutter cooldown
    move_cooldown[AT_FSPECIAL] = 60;
}
if (move_cooldown[AT_FSPECIAL] > 0) {
    move_cooldown[AT_FSPECIAL] -= 1;
}

//NAIR rolling
if ((attack == AT_NAIR) and !free and (window == 2)){
	hsp += spr_dir;
	off_edge = 1;
}

//Stop velocity for parried automoves
if (automove_parried and !free) {
	window = 3;
	hsp = 0;
	automove_parried = 0;
}


