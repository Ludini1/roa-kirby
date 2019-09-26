if (attack = AT_NSPECIAL) {
	switch (current_ability) {
		case 8:
			attack = AT_NSPECIAL_ETA;
			set_attack(AT_NSPECIAL_ETA);
		break;
		case 9:
			attack = AT_NSPECIAL_ORI;
			set_attack(AT_NSPECIAL_ORI);
		break;
	}
}