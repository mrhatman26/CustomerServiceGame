draw_sprite_ext(spr_customers_bw_big, my_body, x, y, 1, 1, 0, my_colour, 1);
draw_sprite_ext(spr_customers_face_big, my_face, x + 94, y + 14, 1, 1, 0, c_white, 1);
if (global.debug){
	draw_set_colour(c_red);
	draw_text(x, y - 32, mood);
	draw_set_colour(c_black);
}