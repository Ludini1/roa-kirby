//Double jump turns kirb around
if (state_timer == 5 and (state == PS_DOUBLE_JUMP) and (prev_djumps != djumps)) {
    if (right_down and -spr_dir) {
        spr_dir = 1;
        prev_djump = djumps;
        
    } else if (left_down and spr_dir) {
        spr_dir = -1;
        prev_djumps = djumps;
    }
}



abilitygiven = current_ability

if (!free) {
    prev_djumps = 0;
}

//COOLDOWNS
if (move_cooldown[AT_FSPECIAL] > 0) {
    move_cooldown[AT_FSPECIAL] -= 1;
}
if (move_cooldown[AT_DSPECIAL] > 0) {
    move_cooldown[AT_DSPECIAL] -= 1;
}
if (move_cooldown[AT_NSPECIAL_FROG] > 0) {
    move_cooldown[AT_NSPECIAL_FROG] -= 1;
}
if (move_cooldown[AT_NSPECIAL_SYLV] > 0) {
    move_cooldown[AT_NSPECIAL_SYLV] -= 1;
}
if (move_cooldown[AT_NSPECIAL_ORCA] > 0) {
    move_cooldown[AT_NSPECIAL_ORCA] -= 1;
}
if (move_cooldown[AT_NSPECIAL_BIRD] > 0) {
    move_cooldown[AT_NSPECIAL_BIRD] -= 1;
}
if (move_cooldown[AT_NSPECIAL_SHOV] > 0) {
    move_cooldown[AT_NSPECIAL_SHOV] -= 1;
}
if (move_cooldown[AT_NSPECIAL_KRAG] > 0) {
    move_cooldown[AT_NSPECIAL_KRAG] -= 1;
}
if (move_cooldown[AT_NSPECIAL_MAY] > 0) {
    move_cooldown[AT_NSPECIAL_MAY] -= 1;
}
if (move_cooldown[AT_NSPECIAL_ABSA] > 0) {
    move_cooldown[AT_NSPECIAL_ABSA] -= 1;
}
if (move_cooldown[AT_NSPECIAL_MOLL] > 0) {
    move_cooldown[AT_NSPECIAL_MOLL] -= 1;
}
if (move_cooldown[AT_NSPECIAL_ELLI] > 0) {
    move_cooldown[AT_NSPECIAL_ELLI] -= 1;
}
if (move_cooldown[AT_EXTRA_3] > 0) {
    move_cooldown[AT_EXTRA_3] -= 1;
}

if tethercd > 0 {
	tethercd -= 1
}


if (jetcharge == 100) and ((get_gameplay_time() mod 30) > 20) { //Fully charged
	outline_color = [ 100, 100, 255 ];
	}
else {
	if current_ability == 6 and ((get_gameplay_time() mod 30) > 20) { //Fully charged and forsburn flavoured
	outline_color = [ 230, 50, 0 ];
	}
	else {
	if (needlecharge == 3) and ((get_gameplay_time() mod 30) > 20) { //Fully charged and ranno flavoured
	outline_color = [ 182, 244, 48 ];
	}
	else {
	outline_color = [ 0, 0, 0 ];
	}
	}
}

//MAGIC COLOUR CODE
if get_player_color(player) = 13 {
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(240, 112, 160);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color


	color_rgb=make_color_rgb(208, 0, 80);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	}

init_shader();

if taunt_pressed and free and state_cat == SC_AIR_NEUTRAL {
attack = AT_TAUNT
set_attack(AT_TAUNT)
window = 5
window_timer = 0
}

//CLEAR GRABS
if ((attack == AT_NSPECIAL) or (attack == AT_NSPECIAL_ORI)) and (window == 0) and (grabbedid != noone) {
	grabbedid.grabbed = 0
	grabbedid.visible = true
	grabbedid.state = PS_IDLE
	grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
	grabbedid = noone
}

if (attack == AT_NSPECIAL_ZET) and (window == 0) {
	if get_attack_value(AT_NSPECIAL_ZET,AG_AIR_SPRITE) != ("AT_NSPECIAL_ZETT_CHARGEUP_AIR") {
	reset_attack_value(AT_NSPECIAL_ZET,AG_SPRITE)
	reset_attack_value(AT_NSPECIAL_ZET,AG_AIR_SPRITE)
	}
}

//ABSA
if (absa_timer > 0) {
    absa_timer -=1 
}
if (absa_timer == 1) {
	sound_play(asset_get("sfx_absa_kickhit"))
	create_hitbox( AT_NSPECIAL_ABSA, 3, x, y )
}

//WRASTOR
if place_meeting(x,y,obj_article1) and obj_article1.state = 3 {
air_accel = .36;
air_max_speed = 7;
initial_dash_speed = 8.5;
dash_speed = 8.5;
walk_speed = 6.5;
djump_sound = asset_get("sfx_birdflap");
}
if !place_meeting(x,y,obj_article1) and air_accel = .36  {
air_accel = .25;
air_max_speed = 4.5;
initial_dash_speed = 6;
dash_speed = 6;
walk_speed = 3.25;
djump_sound = sound_get("djump");
}

//ORCANE
if createpuddle == 1 {
	if MyPuddle != noone {
		with obj_article1 {
			state = 1
			coolindex = 0
		}
	}
	MyPuddle = instance_create( puddlex, puddley, "obj_article1" )
	createpuddle = 0
}

//SHOVEL KNIGHT
if skheal == -10 or skheal == -5 {
	take_damage( player, -1, skheal )
	skheal = 0 
}

if (tethering) {
	gravity_speed =.5;
	can_move = true;
	solid = 1;
}

if resetcolours {
	resetcolours = 0
	set_color_profile_slot(1, 0, 107, 215, 252);
	set_color_profile_slot(1, 1, 44, 96, 196);
	set_color_profile_slot(2, 0, 184, 46, 65);
	set_color_profile_slot(2, 1, 42, 42, 42);
	set_color_profile_slot(3, 0, 85, 240, 182);
	set_color_profile_slot(3, 1, 153, 132, 41);
	set_color_profile_slot(4, 0, 150, 150, 150);
	set_color_profile_slot(4, 1, 75, 75, 75);
	set_color_profile_slot(5, 0, 32, 11, 89);
	set_color_profile_slot(5, 1, 209, 0, 106);
	set_color_profile_slot(6, 0, 236, 78, 58);
	set_color_profile_slot(6, 1, 44, 98, 255);
	set_color_profile_slot(7, 0, 194, 133, 220);
	set_color_profile_slot(7, 1, 192, 0, 147);
	set_color_profile_slot(8, 0, 167, 186, 74);
	set_color_profile_slot(8, 1, 83, 122, 62);
	set_color_profile_slot(9, 0, 143, 70, 56);
	set_color_profile_slot(9, 1, 82, 27, 22);
	set_color_profile_slot(10, 0, 220, 220, 220);
	set_color_profile_slot(10, 1, 120, 120, 120);
	set_color_profile_slot(11, 0, 253, 117, 89);
	set_color_profile_slot(11, 1, 171, 44, 44);
	set_color_profile_slot(12, 0, 229, 195, 156);
	set_color_profile_slot(12, 1, 158, 99, 15);
}

//CLEAR MARK ON DEATH
for (var i = 0; i < 3; i++) {
	if (ds_list_find_value(marked_list, i).state == PS_RESPAWN) {
		ds_list_delete(marked_list, i);
		i = 0;
	}
}