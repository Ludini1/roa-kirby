if current_ability != 0 {
draw_sprite_ext(sprite_get("ability_huds"),current_ability-1,temp_x+188,temp_y-16,1,1,0,c_white,1)
draw_debug_text(temp_x,temp_y-8,string("CURRENTLY UNAVAILABLE"))
}