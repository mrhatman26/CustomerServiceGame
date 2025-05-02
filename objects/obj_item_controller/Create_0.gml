global.items = [];
items_file = file_text_open_read("items.txt");
if (items_file == -1){
	show_error("Error: items.txt does not exist or is not readable.", true);
}
else{
	var line = "";
	var line_split = [];
	while (file_text_eof(items_file) == false){
		file_text_readln(items_file);
		line = file_text_read_string(items_file);
		if (line != ""){
			line_split = []
			array_push(global.items, string_split_real(line, ", "));//string_split(line, ", ", false));
		}
	}
}