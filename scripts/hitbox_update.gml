if (attack == AT_FSPECIAL) {
	hsp *= 0.9
	vsp *= 0.9
}

if ((attack == AT_NSPECIAL_FROG) or (attack == AT_NSPECIAL_SYLV)) and !free{
instance_destroy()
}

if (attack == AT_NSPECIAL_SYLV) {
proj_angle = point_direction(x, y, x+hsp, y+vsp)-90
}