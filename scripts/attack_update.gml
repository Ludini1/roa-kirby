//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_USTRONG) {
	can_move = false
	}
	
if (attack == AT_NSPECIAL){
    if (window == 2){
        if (special_down){
			if (window_timer == 22) {
			    window = 2;
				window_timer = 0;
			}
        }
		else {
			window_timer = 0;
			window = 7;
		}
	}
    can_fast_fall = false;
}



//DSPECIAL charging
if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	if (window == 5) { //IASA on fullcharge usage + Blast
		if (special_pressed) and (window_timer > 10){
			window = 6;
			window_timer = 0;
			}
		if (window_timer > 20) {
			iasa_script();
		}
	}
	if ((shield_pressed) and (3 > window )){ //SHIELD CANCEL
		window = 7;
		window_timer = 0;
	}
    if (window == 2){ //CHARGING
		if (special_down) {
			if (window_timer == 15){ //Loop
				window_timer = 0;
			}
			if (100 > jetcharge) { //Adding charge
			jetcharge += 2;
				if (jetcharge == 100){
					sound_play(sound_get("jet_full_charge"))
					}
				
				if (jetcharge == 50){
					sound_play(sound_get("jet_med_charge"))
					}				
			}
		}
		else { //Using move if special released
				if (jetcharge == 100) { //FULLCHARGE
						jetcharge = 0;
						window = 5;
						window_timer = 0;
				}
				else {
					if (jetcharge > 50){ //MEDCHARGE
						jetcharge = 0;
						window = 4;
						window_timer = 0;
					}
					else { //NOCHARGE
						jetcharge = 0;
						window = 3;
						window_timer = 0;
					}
				}
			}
		}
	if ((window == 3) or (window == 4) or (window == 5) ) and (window_timer == 20) { //Endlag
		window = 7;
		window_timer = 0;
		}
}
	
  

//FSPECIAL cooldown
if (attack == AT_FSPECIAL) and (window == 3) and (window_timer == 7) { //Cutter cooldown
    move_cooldown[AT_FSPECIAL] = 60;
}

//DSPECIAL cooldown
if (attack == AT_DSPECIAL) and (window > 2) and (7 > window) { //Jet cooldown
    move_cooldown[AT_DSPECIAL] = 60;
}

//Fastfall Fixes
if (attack == AT_DATTACK) or (attack == AT_USPECIAL) {
	can_fast_fall = false;
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

if (attack == AT_TAUNT) { //Ending taunts
	if (window == 2 and window_timer == 48) {
		window = 6
		window_timer = 0
	}
	if (window == 3 and window_timer == 84) {
		window = 6
		window_timer = 0
	}
	if (window == 4 and window_timer == 24) {
		window = 6
		window_timer = 0
	}
	if (window == 5 and window_timer == 24) {
		window = 6
		window_timer = 0
	}
}

//Taunt controller
if (attack = AT_TAUNT) {
	if free and (window == 1){
		window = 5
	}	
	if (window == 1) and (window_timer = 10) and (!free){
		if (special_pressed) {
			if (shield_pressed) {
				window = 3
				}
			else {
				window = 4
				}
			}
		else {
			window = 2
			}
		}
	if (window == 6) and (taunt_down){
		current_ability = 0;
		}
}


//Nspecial grab

if (attack == AT_NSPECIAL) {
		if (down_down) and (window == 3) and (window_timer == 20) {
					window = 5
					window_timer = 0
				}
		if (window == 3) {
				if (window_timer == 0) {
						sound_play(sound_get("nspecial_swallow"))
				}
				grabbedid.x = x;
				grabbedid.y = y-12;
				grabbedid.visible = false
				grabbedid.hurtboxID.sprite_index = empty_sprite
		}
		if (window == 4){
				if (window_timer == 0) {
					grabbedid.grabbed = 0
					grabbedid.visible = true
					grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
					grabbedid = noone
					sound_play(sound_get("nspecial_spit"))
				}
				if (window_timer == 11) {
					window = 7
					window_timer = 0
				}
		}
		if (window == 5) and (window_timer == 6){
				grabbedid.grabbed = 0
				grabbedid.visible = true
				grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
				grabbedid = noone
				sound_play(sound_get("nspecial_down"))
		
		}
		if (window == 6) and (window_timer == 12){
			window = 7
			window_timer = 8
		}
}

if (attack != AT_NSPECIAL) and grabbedid != noone {
	grabbedid.grabbed = 0
	grabbedid.visible = true
	grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
	grabbedid = noone
}