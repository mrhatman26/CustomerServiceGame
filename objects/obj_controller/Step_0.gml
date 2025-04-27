if (keyboard_check(vk_shift) && keyboard_check_pressed(vk_escape)){
	game_end();
}
if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("R"))){
	room_restart();
}
if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("D"))){
	global.debug = !global.debug;
}
//Customer Spawning
customer_create_timer--;
if (customer_create_timer < 1){
	var queue_pos = -1;
	for (var i = 0; i < array_length(customer_queue); i++){
		if (customer_queue[i] == noone){
			queue_pos = i;
		}
	}
	if (queue_pos != -1){
		var new_customer = instance_create_layer(room_width + sprite_get_width(spr_customers), room_width / 2, "Instances", obj_customer);
		new_customer.my_queue_pos = queue_pos;
	}
	customer_create_timer = irandom_range(300, 1800);
}
//Ghost Customers
ghost_customer_timer = spawn_ghost(ghost_customer_timer);
if (global.debug == true){
	if (mouse_check_button_pressed(mb_left)){
		instance_create_layer(mouse_x + 128, mouse_y - 128, "Instances", obj_customer_ghost);
	}
	if (mouse_check_button_pressed(mb_right)){
		instance_create_layer(mouse_x, mouse_y, "Instances", obj_customer);
	}
}