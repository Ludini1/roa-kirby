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