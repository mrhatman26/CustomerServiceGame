if (queue_pos_updated == true){
	target_pos = get_queue_x_pos(my_queue_pos);
	if (x > target_pos && x != target_pos){
		direction = 180;
	}
	if (x < target_pos && x != target_pos){
		direction = 0;
	}
	if (check_within_pos(x, target_pos) == true){
		direction = 180;
		x = target_pos;
		speed = 0;
		queue_pos_updated = false;
	}
	else{
		speed = 2;
	}
}
else{
	if (my_queue_pos == 0){
		show_debug_message("Ready to take my order!");
	}
}			