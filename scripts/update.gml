//Double jump turns kirb around
if (jump_pressed and (state == PS_DOUBLE_JUMP) and (prev_djumps != djumps)) {
    if (right_down and -spr_dir) {
        spr_dir = 1;
        prev_djump = djumps;
        
    } else if (left_down and spr_dir) {
        spr_dir = -1;
        prev_djumps = djumps;
    }
}

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




init_shader();

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
}

//CLEAR MARK ON DEATH
for (var i = 0; i < 3; i++) {
	if (ds_list_find_value(marked_list, i).state == PS_RESPAWN) {
		ds_list_delete(marked_list, i);
		i = 0;
	}
}