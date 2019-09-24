if my_hitboxID.attack == AT_NSPECIAL and my_hitboxID.hbox_num == 1 { //Spit
	current_ability = hit_player_obj.abilitygiven;
	window = 3;
	window_timer = 0;
	hit_player_obj.grabbed = 1;
	grabbedid = hit_player_obj;
}