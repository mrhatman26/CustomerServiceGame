try{
	draw_sprite_ext(spr_customer_heads, my_head, x, y, image_xscale * size_increase, image_yscale * size_increase, 0, c_white, 1);
	draw_sprite_ext(spr_customer_bodies, my_body, x, y + (54 * size_increase), image_xscale * size_increase, image_yscale * size_increase, 0, c_white, 1);
	draw_sprite_ext(spr_customer_legs, my_legs, x, y + (126 * size_increase), image_xscale  * size_increase, image_yscale * size_increase, 0, c_white, 1);
	draw_sprite_ext(spr_customer_legs, my_legs, x, y + (126 * size_increase), image_xscale  * size_increase, image_yscale * size_increase, 0, c_white, 1);
}
catch (_exception) {
	draw_sprite_ext(spr_customer_base, 0, x, y, image_xscale, image_yscale, 0, c_black, 1);
	show_message("Unable to draw customer sprite, drawing base instead. Error was:\n + " + string(_exception));
}
//Drop this whole system and just design a bunch of customers.
//This leads to some really silly looking people.
//Also, add a black outline to the sprites to make them look a little better?