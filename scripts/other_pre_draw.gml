//draw_debug_text(x-8,y+16,string(abilitygiven))
if (ds_list_find_index(other_player_id.marked_list, self.id) != -1) {
    draw_sprite(asset_get("fer_leaf_spr"), get_gameplay_time()*.2, x, y-char_height*.5);
}

draw_debug_text(960,540,get_state_name(state));

//draw_debug_text(x-8,y+16,string(ds_list_find_value(marked_list, 0)));