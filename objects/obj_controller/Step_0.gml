if (keyboard_check(vk_shift) && keyboard_check_pressed(vk_escape)){
	game_end();
}
if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("R"))){
	room_restart();
}
//Ghost Customers
ghost_customer_timer = spawn_ghost(ghost_customer_timer);
if (mouse_check_button_pressed(mb_left)){
	instance_create_layer(mouse_x + 128, mouse_y - 128, "Instances", obj_customer_ghost);
}
if (mouse_check_button_pressed(mb_right)){
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_customer);
}