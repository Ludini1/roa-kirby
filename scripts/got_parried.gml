//Stop velocity for parried automoves
if ((my_hitboxID.attack == AT_DATTACK) or (my_hitboxID.attack == AT_DTILT)
	or (my_hitboxID.attack == AT_NAIR)) {
	automove_parried = 1;
}