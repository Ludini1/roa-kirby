//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
	
if (attack == AT_NSPECIAL){ //Inhale Loop
    if (window == 2){
        if (special_down){
            if (window_timer == 22) {
                window = 2;
                window_timer = 0;
            }
            with (asset_get("oPlayer")) {
                var centerY = y - char_height / 2;
                other.x_dist = (x - other.x) * other.spr_dir;
                other.y_dist = centerY - other.y + 20;
                other.math = 15 + char_height / 2 + exp(0.045*other.x_dist)/10;
                if(other.x_dist > 20 &&  150 > other.x_dist) {
                    if(other.math > abs(other.y_dist)) {
                        other.moveX = other.spr_dir * (150 - other.x_dist) / 25;
                        if(other.moveX >= 0) {
                            x -= ceil(other.moveX);
                        } else {
                            x -= floor(other.moveX);
                        }
                    }
                }
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
		if (special_pressed) and (window_timer > 6){
			window = 6;
			window_timer = 0;
			}
		if (window_timer > 10) {
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
    move_cooldown[AT_FSPECIAL] = 90;
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
	if (window == 3) {
		if (window_timer == 40) and (taunt_down) {
			window_timer = 39
		}
		if (window_timer == 84){
			window = 6
			window_timer = 0
		}
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
		if current_ability != 0 {
		set_color_profile_slot(1, 0, 107, 215, 252);
		set_color_profile_slot(1, 1, 44, 96, 196);
		set_color_profile_slot(2, 0, 229, 195, 156);
		set_color_profile_slot(2, 1, 158, 99, 15);
		set_color_profile_slot(3, 0, 85, 240, 182);
		set_color_profile_slot(3, 1, 153, 132, 41);
		set_color_profile_slot(4, 0, 150, 150, 150);
		set_color_profile_slot(4, 1, 75, 75, 75);
		set_color_profile_slot(5, 0, 32, 11, 89);
		set_color_profile_slot(5, 1, 209, 0, 106);
		current_ability = 0;
		}
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
		}
		if (window == 4){
				if (window_timer == 0) and (grabbedid != noone) {
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
		if (window == 5) {
		if (6 > (window_timer)) {
			grabbedid.x = x;
			grabbedid.y = y-12;
		}
		
		if (window_timer == 6) and (grabbedid != noone){
				grabbedid.grabbed = 0
				grabbedid.visible = true
				grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
				grabbedid = noone
				sound_play(sound_get("nspecial_down"))
		
		}
		}
		if (window == 6) and (window_timer == 12){
			window = 7
			window_timer = 8
		}
}

if (attack == AT_FAIR) { //Fair sounds
	if (window == 2) {
		if (window_timer == 9) {
			sound_play( asset_get( "sfx_swipe_weak2" ) );
			window_timer += 1
			}
		if (window_timer == 17) {
			sound_play( asset_get( "sfx_swipe_medium1" ) );
			window_timer += 1
			}
	}
}

//Copy Abilities
if (attack == AT_NSPECIAL_ETA) {
	can_move = 0;
}

if (attack == AT_NSPECIAL_ZET) {
	if window == 1 and (window_timer > 3) {
		if !(special_down) {
			window = 2
			window_timer = 0
		}
		else {
			if window_timer = 35 {
				window = 3
				window_timer = 0
			}
		}
	}
	if ((window == 2) or (window = 3)) {
		set_attack_value(AT_NSPECIAL_ZET,AG_SPRITE,sprite_get("AT_NSPECIAL_ZETT_RELEASE_GROUND"))
		set_attack_value(AT_NSPECIAL_ZET,AG_AIR_SPRITE,sprite_get("AT_NSPECIAL_ZETT_RELEASE_AIR"))
		if window_timer > 3 can_jump = true;
		if window_timer == 15 {
			window = 4
			window_timer = 0
		}
	}
}

if (attack == AT_NSPECIAL_ORI) {
	if (window == 3) and (window_timer = 20) {
		state = PS_PRATFALL
		}
	if (window == 4){
			can_move = 0;
			grabbedid.x = x+spr_dir*17;
			grabbedid.y = y+12;
			grabbedid.state = PS_WRAPPED
			grabbedid.invincible = true
			bash_angle = joy_dir
		}
	if (window == 5) and (grabbedid != noone){
		grabbedid.invincible = false
		grabbedid = noone
		if spr_dir {
			set_hitbox_value(AT_NSPECIAL_ORI,2,HG_ANGLE,bash_angle+180)
		}
		else {
			set_hitbox_value(AT_NSPECIAL_ORI,2,HG_ANGLE,360-bash_angle)
		}
		
		hsp = lengthdir_x(10,bash_angle)
		vsp = lengthdir_y(10,bash_angle)
		
		if window_timer == 19 {
		}
		
		}
}

//RANNO NEEDLES
if (attack == AT_NSPECIAL_FROG){
	if window == 1 and window_timer == 0 and needlecharge == 0{
		reset_window_value(AT_NSPECIAL_FROG,2,AG_WINDOW_ANIM_FRAME_START)
		reset_hitbox_value(AT_NSPECIAL_FROG,2,HG_WINDOW)
		reset_hitbox_value(AT_NSPECIAL_FROG,3,HG_WINDOW)
		reset_hitbox_value(AT_NSPECIAL_FROG,4,HG_WINDOW)
		}
	if ((shield_pressed) and (3 > window )){ //SHIELD CANCEL
		window = 5;
		window_timer = 0;
	}
    if (window == 2){ //CHARGING

		if (special_down) {
			if (window_timer == 24){ //Loop
				window_timer = 0;
				if 3 > needlecharge {
				needlecharge += 1
				if needlecharge == 1 {
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"))
				set_window_value(AT_NSPECIAL_FROG,2,AG_WINDOW_ANIM_FRAME_START,12)
				}
				if needlecharge == 2 {
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"))
				set_window_value(AT_NSPECIAL_FROG,2,AG_WINDOW_ANIM_FRAME_START,20)
				
				}
				if needlecharge == 3 {
				sound_play(asset_get("sfx_frog_fspecial_charge_full"))
				set_window_value(AT_NSPECIAL_FROG,2,AG_WINDOW_ANIM_FRAME_START,28)
				
				}
				}
			}
			}
		else { //Using move if special released
			window = 3;
			window_timer = 0;
			if (needlecharge > 0) set_hitbox_value(AT_NSPECIAL_FROG,2,HG_WINDOW,3)
			if (needlecharge > 1) set_hitbox_value(AT_NSPECIAL_FROG,3,HG_WINDOW,3)
			if (needlecharge > 2) set_hitbox_value(AT_NSPECIAL_FROG,4,HG_WINDOW,3)
			needlecharge = 0;
			reset_window_value(AT_NSPECIAL_FROG,2,AG_WINDOW_ANIM_FRAME_START)
			}
		}
		if window == 4 and window_timer == 12 {
		window = 5;
		window_timer = 8;
		move_cooldown[AT_NSPECIAL_FROG] = 60;
		reset_hitbox_value(AT_NSPECIAL_FROG,2,HG_WINDOW)
		reset_hitbox_value(AT_NSPECIAL_FROG,3,HG_WINDOW)
		reset_hitbox_value(AT_NSPECIAL_FROG,4,HG_WINDOW)
		}

}

