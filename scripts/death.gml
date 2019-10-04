if current_ability != 0 {
	set_color_profile_slot(1, 0, 107, 215, 252);
	set_color_profile_slot(1, 1, 44, 96, 196);
	set_color_profile_slot(2, 0, 229, 195, 156);
	set_color_profile_slot(2, 1, 158, 99, 15);
	set_color_profile_slot(3, 0, 85, 240, 182);
	set_color_profile_slot(3, 1, 153, 132, 41);
	set_color_profile_slot(4, 0, 150, 150, 150);
	set_color_profile_slot(4, 1, 75, 75, 75);
	set_color_profile_slot(5, 0, 32, 11, 89);
	set_color_profile_slot(5, 1, 209, 0, 106);
	set_color_profile_slot(6, 0, 194, 133, 220);
	set_color_profile_slot(6, 1, 192, 0, 147);
	set_color_profile_slot(7, 0, 143, 70, 56);
	set_color_profile_slot(7, 1, 82, 27, 22);
	set_color_profile_slot(8, 0, 220, 220, 220);
	set_color_profile_slot(8, 1, 120, 120, 120);
	set_color_profile_slot(9, 0, 253, 117, 89);
	set_color_profile_slot(9, 1, 171, 44, 44);
	set_color_profile_slot(10, 0, 184, 46, 65);
	set_color_profile_slot(10, 1, 42, 42, 42);
}

jetcharge = 0
current_ability = 0
needlecharge = 0;
if instance_exists(obj_article1) {
if obj_article1.state == 3 obj_article1.lifetime = 10
}

