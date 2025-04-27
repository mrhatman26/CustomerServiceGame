function get_queue_x_pos(queue_pos){
	return global.queue_target_x + (global.queue_spaces * queue_pos);
}

function check_within_pos(my_x, my_target_pos){
	if (my_x >= my_target_pos - 5 && my_x <= my_target_pos + 5){
		return true;
	}
	else{
		return false;
	}
}