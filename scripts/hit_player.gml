if my_hitboxID.attack == AT_NSPECIAL { //Grab and stuff
	if my_hitboxID.hbox_num == 1 {
		window = 3;
		window_timer = 0;
		hit_player_obj.grabbed = 1;
		grabbedid = hit_player_obj;
	}
	if my_hitboxID.hbox_num == 3 {
		current_ability = hit_player_obj.abilitygiven;
	}
}

if my_hitboxID.attack == AT_NSPECIAL_ORI { //Bash
	if my_hitboxID.hbox_num == 1 {
		window = 4;
		window_timer = 0;
		grabbedid = hit_player_obj;
		bash_angle = -1
		reset_hitbox_value(AT_NSPECIAL_ORI,2,HG_ANGLE)
	}
}

if (my_hitboxID.attack == AT_FAIR) and ((my_hitboxID.hbox_num == 1) or (my_hitboxID.hbox_num == 2)) { //Make sure it links
	if (vsp > -5) {
		vsp -= 2
	}
}