if (global.debug == true){
	draw_self();
	for (var i = 0; i < array_length(global.items); i++){
		draw_text(960, y + (32 * i), string(global.items[i]));
	}
}