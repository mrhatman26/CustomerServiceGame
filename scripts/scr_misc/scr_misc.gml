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

function string_split_real(value, deliminator, remove_empty=false){
	var split_string = string_split(value, deliminator, remove_empty);
	for (var ii = 0; ii < array_length(split_string); ii++){
		try{
			split_string[ii] = real(string_replace(split_string[ii], "\n", ""));
		}
		catch (_exception){
			show_debug_message(split_string[ii] + " cannot be converted to real");
		}
	}
	return split_string;
}

function string_title(str){
	var current_char = "";
	for (var counter = 0; counter < string_length(str); counter++){
		current_char = string_copy(str, counter, 1);
		if (current_char == " " || counter == 0){
			try{
				str = string_insert(string_upper(string_copy(str, counter + 1, 1)), str, counter + 1);
				str = string_delete(str, counter + 2, 1);
			}
			catch (_exception){
				show_debug_message("Something went wrong while trying to make the string a title!");
			}
		}
	}
	return str;
}