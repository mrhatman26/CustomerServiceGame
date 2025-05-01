if (global.debug == true){
	draw_self();
	draw_set_colour(c_red);
	draw_text(32, 96, ">>DEBUG MODE<<");
	draw_text(32, 128, "customer_create_timer: " + string(customer_create_timer));
	draw_set_colour(c_black);
}