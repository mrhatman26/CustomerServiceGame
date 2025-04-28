if (direction > 90 && direction < 270){
	image_xscale = 1;
}
else{
	image_xscale = -1;
}
try{
	draw_sprite_ext(spr_customers, my_body, x, y, image_xscale * size_increase, image_yscale * size_increase, 0, c_white, 1);
}
catch (_exception) {
	draw_sprite_ext(spr_customers, 0, x, y, image_xscale, image_yscale, 0, c_black, 1);
	show_message("Unable to draw customer sprite, drawing base instead. Error was:\n + " + string(_exception));
}
if (global.debug == true){
	draw_set_colour(c_red);
	draw_text(x + 111, y - 32, string(target_pos));
	draw_text(x + 111, y - 64, string(my_queue_pos));
	draw_text(x + 111, y - 96, string(x));
	draw_text(x + 111, y - 128, string(need_number) + " | " + string(subneed_number));
	draw_rectangle(x, y, x + 32, y - 32, false);
	draw_set_colour(c_black);
}