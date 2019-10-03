//Saves the name of the character as abilitygiven
abilitygiven = 0

var idlesprite = sprite_get_name( sprite_index ), str = string_copy(idlesprite, 1, string_pos("_",idlesprite) - 1);
switch(str){
    case "zet":
        abilitygiven = 1;
    break;
	case "orca":
        abilitygiven = 2;
    break;
	case "bug":
        abilitygiven = 3;
    break;
	case "bird":
        abilitygiven = 4;
    break;
	case "ferret":
        abilitygiven = 5;
	break;
	case "dragon":
        abilitygiven = 5;
	break;
	case "smoke":
        abilitygiven = 6;
    break;
	case "goat":
        abilitygiven = 7;
    break;
	case "bear":
        abilitygiven = 8;
    break;
	case "panda":
        abilitygiven = 8;
    break;
	case "cat":
        abilitygiven = 9;
    break;
	case "frog":
	    abilitygiven = 10;
    break;
	case "tux":
        abilitygiven = 10;
    break;
	case "sword":
        abilitygiven = 11;
    break;
	case "mech":
        abilitygiven = 12;
    break;
	case "wolf":
        abilitygiven = 13;
    break;
	case "gus":
        abilitygiven = 14;
    break;
    default:
        abilitygiven = 0;
    break;
}

abilitygiven = kirbyability