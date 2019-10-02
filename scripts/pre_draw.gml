//draw_debug_text(x-8,y+16,string(tethering))
//draw_debug_text(x-8,y+24,string(bash_angle))
//draw_debug_text(x-8,y+40,string(attack))
//draw_debug_text(x-8,y+64,string(window))
//draw_debug_text(x-8,y+88,string(window_timer))



if (attack == AT_NSPECIAL_ZET) and (window == 2) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)) { 
draw_sprite_ext(sprite_get("AT_NSPECIAL_ZETT_UNCHRG_BG"),window_timer / 3.3,x,y,1,1,0,c_white,1)
}
if (attack == AT_NSPECIAL_ZET) and (window == 3) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)) {
draw_sprite_ext(sprite_get("AT_NSPECIAL_ZETT_CHRG_BG"),window_timer / 3.3,x,y,1,1,0,c_white,1)
}


if (attack == AT_NSPECIAL_ELLI) and (window == 2) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
draw_sprite_ext(sprite_get("AT_NSPECIAL_ELLI_FIST"),0,x+spr_dir*16,y,1,1,bash_angle,c_white,1)
}

if (attack == AT_NSPECIAL_SHOV) and (state == PS_ATTACK_AIR) {
draw_sprite_ext(sprite_get("AT_NSPECIAL_SHOV_RIBBON_FLAP"),(get_gameplay_time() mod 4),x+(spr_dir*-52),y-88,spr_dir,1,0,c_white,1)
}


if instance_exists( obj_article1 ) and (obj_article1.state == 0 or obj_article1.state ==  1 or obj_article1.state == 2) {
draw_sprite(obj_article1.coolsprite,obj_article1.coolindex,obj_article1.x,obj_article1.y+12)
//draw_debug_text(x-8,y+88,string(obj_article1.coolindex))
}


if instance_exists (obj_article1) and obj_article1.state == 3 {
draw_sprite_ext(sprite_get("slipstream_spr"),0,0,obj_article1.y-20,960,obj_article1.ysize,0,c_white,0.5)
}