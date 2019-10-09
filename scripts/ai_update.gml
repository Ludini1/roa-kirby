if attack = AT_NSPECIAL and window = 3 {
	down_down = 1
}

if ai_recovering and jetcharge > 49{
	attack = AT_DSPECIAL
}

if attack = AT_DSPECIAL and window = 2 and !ai_recovering {
		if 180 > point_distance(x,y,ai_target.x,ai_target.y)  {
			if 130 > point_distance(x,y,ai_target.x,ai_target.y) {
			special_down = 0
			}
			else {
			shield_pressed = 1
			}
		}
		else {
			special_down = 1
		}
}

if attack = AT_DSPECIAL and window = 5 and position_meeting(x+spr_dir*64,y-32,ai_target) {
	special_pressed = 1
}

if 130 > point_distance(x,y,ai_target.x,ai_target.y) {
	close_side_attacks[5] = AT_DSPECIAL;
	close_side_attacks[6] = AT_DSPECIAL;
}
else { 
	close_side_attacks[5] = AT_FAIR;
	close_side_attacks[6] = AT_NSPECIAL;
}

	
