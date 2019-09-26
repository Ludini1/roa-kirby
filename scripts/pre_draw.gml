//draw_debug_text(x-8,y+16,string(current_ability))
//draw_debug_text(x-8,y+24,string(bash_angle))
//draw_debug_text(x-8,y+32,string(get_hitbox_value(AT_NSPECIAL_ORI,2,HG_ANGLE)))

if (attack == AT_NSPECIAL_ORI) and (window == 4) {
draw_sprite_ext(asset_get("bash_dir_spr"),window_timer / 6,x+spr_dir*12,y-17,1,1,bash_angle-45,c_white,1)
}