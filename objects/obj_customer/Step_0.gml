if (queue_pos_updated == true){
	//My position in the queue has been updated! (Move to the next spot)
	if (my_queue_pos >= 0){
		target_pos = get_queue_x_pos(my_queue_pos);
	}
	else{
		target_pos = 0 - sprite_get_width(spr_customers);
	}
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
		//I am at the front of the queue! (The player can interact with me)
		if (asked_question == false){
			if (mouse_overlaps_me(x, y, spr_customer, size_increase) && mouse_check_button_pressed(mb_left)){
				//Ask question
			}
		}
	}
	if (queuing == true){
		//I am still waiting in the queue, grr.
		if (queue_paitence < 1){
			remove_from_queue(id);
		}
		else{
			queue_paitence--;
			queue_paitence = 1;
		}
	}
}
//Debug
if (global.debug == true){
	if (mouse_overlaps_me(x, y, spr_customers, size_increase) && mouse_check_button_pressed(mb_middle)){
		queue_paitence = 0;
	}
}