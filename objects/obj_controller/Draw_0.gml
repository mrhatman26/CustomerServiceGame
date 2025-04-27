if (global.debug == true){
	draw_set_colour(c_red);
	draw_text(32, 32, ">>DEBUG MODE<<");
	draw_text(32, 64, "customer_create_timer: " + string(customer_create_timer));
	draw_set_colour(c_black);
}