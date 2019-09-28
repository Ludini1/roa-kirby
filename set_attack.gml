if (attack = AT_NSPECIAL) {
	switch (current_ability) {
		case 1:
			attack = AT_NSPECIAL_ZET;
			set_attack(AT_NSPECIAL_ZET);
		break;
		case 8:
			attack = AT_NSPECIAL_ETA;
			set_attack(AT_NSPECIAL_ETA);
		break;
		case 9:
			attack = AT_NSPECIAL_ORI;
			set_attack(AT_NSPECIAL_ORI);
		break;
		case 10:
			attack = AT_NSPECIAL_FROG;
			set_attack(AT_NSPECIAL_FROG);
		break;
		case 13:
			attack = AT_NSPECIAL_SYLV;
			set_attack(AT_NSPECIAL_SYLV);
		break;
	}
}