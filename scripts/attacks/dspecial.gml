set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("AT_DSPECIAL_CHARGE"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("AT_DSPECIAL_CHARGE"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("AT_DSPECIAL_CHARGE_hurt"));

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sound_get("jet_boost"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, -2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sound_get("jet_boost"));

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_DSPECIAL, 0);