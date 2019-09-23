set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("AT_DSPECIAL_CHARGE"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("AT_DSPECIAL_CHARGE"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("AT_DSPECIAL_CHARGE_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1); //CHARGE
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1); //NOCHARGE
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("jet_boost"));

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1); //MEDCHARGE
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sound_get("jet_boost"));

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1); //FULLCHARGE
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, -2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sound_get("jet_boost"));

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1); //BLAST
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, sound_get("jet_blast"));


set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 85);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 10);