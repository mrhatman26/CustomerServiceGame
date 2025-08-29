if (direction > 90 && direction < 270){
	image_xscale = 1;
}
else{
	image_xscale = -1;
}
//Normal drawing
try{
	draw_sprite_ext(spr_customers_old, my_body, x, y, image_xscale * size_increase, image_yscale * size_increase, 0, c_white, 1);
	if (queue_pos_updated == false){
		if (mouse_overlaps_me(x, y, spr_customers_old, size_increase) && my_queue_pos == 0){
			draw_sprite_ext(spr_customers_outline_old, my_body, x, y, image_xscale * size_increase, image_yscale * size_increase, 0, c_white, 1);
		}
	}
}
//Error drawing
catch (_exception) {
	draw_sprite_ext(spr_customers_old, 0, x, y, image_xscale, image_yscale, 0, c_black, 1);
	if (queue_pos_updated == false){
		if (mouse_overlaps_me(x, y, spr_customers_old, size_increase) && my_queue_pos == 0){
			draw_sprite_ext(spr_customers_outline_old, 0, x, y, image_xscale * size_increase, image_yscale * size_increase, 0, c_white, 1);
		}
	}
	show_message("Unable to draw customer sprite, drawing base instead. Error was:\n + " + string(_exception));
}
if (global.debug == true){
	draw_set_colour(c_red);
	draw_text(x + 111, y - 32, string(target_pos));
	draw_text(x + 111, y - 64, string(my_queue_pos));
	draw_text(x + 111, y - 96, string(x));
	draw_text(x + 111, y - 128, string(need_number) + " | " + string(subneed_number));
	draw_text(x + 111, y - 160, string(queue_paitence));
	draw_text(x + 111, y - 192, string(global.items[item_no]));
	draw_rectangle(x, y, x + 32, y - 32, false);
	draw_set_colour(c_black);
}