//draw_debug_text(x-8,y+16,string(current_ability))
//draw_debug_text(x-8,y+24,string(grabbedid))
//draw_debug_text(x-8,y+40,string(attack))
//draw_debug_text(x-8,y+64,string(window))
//draw_debug_text(x-8,y+88,string(window_timer))



if (attack == AT_NSPECIAL_ZET) and (window == 2) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)) { 
draw_sprite_ext(sprite_get("AT_NSPECIAL_ZETT_UNCHRG_BG"),window_timer / 3.3,x-12,y,1,1,bash_angle-45,c_white,1)
}
if (attack == AT_NSPECIAL_ZET) and (window == 3) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)) {
draw_sprite_ext(sprite_get("AT_NSPECIAL_ZETT_CHRG_BG"),window_timer / 3.3,x-16,y,1,1,bash_angle-45,c_white,1)
}