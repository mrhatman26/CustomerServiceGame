function generate_repeating_array(length, var_to_repeat){
	var new_array = [];
	for (var i = 0; i < length; i++){
		array_push(new_array, var_to_repeat);
	}
	return new_array;
}

function mouse_overlaps_me(x, y, sprite, size_increase=1){
	if (mouse_x > x && mouse_x < x + (sprite_get_width(sprite) * size_increase) && mouse_y > y && mouse_y < y + (sprite_get_height(sprite) * size_increase)){
		return true;
	}
	else{
		return false;
	}
}

function get_array_index(array, value){
	for (var i = 0; i < array_length(array); i++){
		show_message("value = " + string(value) + "\n\narray[" + string(i) + "] = " + string(array[i]));
		if (array[i] == value){
			return i;
		}
	}
	return -1;
}