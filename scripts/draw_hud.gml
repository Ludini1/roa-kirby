if current_ability != 0 {
	if 16 > current_ability {
		draw_sprite_ext(sprite_get("ability_huds"),current_ability-1,temp_x+188,temp_y-16,1,1,0,c_white,1)
	}
	else {
		draw_sprite_ext(sprite_get("ability_huds"),15,temp_x+188,temp_y-16,1,1,0,c_white,1)
	}
}