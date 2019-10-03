set_attack_value(AT_NSPECIAL_ABSA, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_ABSA, AG_SPRITE, sprite_get("AT_NSPECIAL_ABSA"));
set_attack_value(AT_NSPECIAL_ABSA, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_ABSA, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_ABSA, AG_AIR_SPRITE, sprite_get("AT_NSPECIAL_ABSA"));
set_attack_value(AT_NSPECIAL_ABSA, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_ABSA_AIR_hurt"));

set_window_value(AT_NSPECIAL_ABSA, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ABSA, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_ABSA, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_ABSA, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ABSA, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
set_window_value(AT_NSPECIAL_ABSA, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NSPECIAL_ABSA, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ABSA, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_ABSA, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_ABSA, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_ABSA, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ABSA, 2, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip2"));
set_window_value(AT_NSPECIAL_ABSA, 2, AG_WINDOW_SFX_FRAME, 34);

set_window_value(AT_NSPECIAL_ABSA, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ABSA, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_ABSA, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_ABSA, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_NSPECIAL_ABSA, 3);

set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_LIFETIME, 105);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_VISUAL_EFFECT,1);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_PROJECTILE_SPRITE, sprite_get("AT_NSPECIAL_ABSA_CLOUD"));
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_PROJECTILE_MASK, sprite_get("AT_NSPECIAL_ABSA_CLOUD"));
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_PROJECTILE_ANIM_SPEED, 0.15);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_ABSA, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_ABSA, 2, HG_PROJECTILE_MASK, sprite_get("AT_NSPECIAL_ABSA_RING"));

set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_HEIGHT, 110);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_ABSA, 3, HG_HITPAUSE_SCALING, .6);
