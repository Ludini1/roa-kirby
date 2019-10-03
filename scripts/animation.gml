switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

if state == PS_DOUBLE_JUMP and state_timer == 1 and place_meeting(x,y,obj_article1) and obj_article1.state = 3{
winganim = 25
}

if winganim > 0 {
	if state == PS_DOUBLE_JUMP sprite_index = sprite_get("doublejump_slipstream")
	else winganim -= 1
}