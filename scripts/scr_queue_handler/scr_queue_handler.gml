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

function remove_from_queue(customer_id){
	var customer_found = false;
	for (var i = 0; i < array_length(global.controller.customer_queue); i++){
		if (global.controller.customer_queue[i] != noone){
			if (global.controller.customer_queue[i].id == customer_id){
				//global.controller.customer_queue[i] = noone;
				array_delete(global.controller.customer_queue, i, 1);
				customer_id.my_queue_pos = -1;
				customer_found = true;
			}
		}
	}
	if (customer_found == true){
		array_push(global.controller.customer_queue, noone);
		update_entire_queue();
	}
}

function update_entire_queue(){
	with (obj_customer){
		if (queuing == true){
			my_queue_pos = get_array_index(global.controller.customer_queue, self.id);
			queue_pos_updated = true;
		}
	}
}