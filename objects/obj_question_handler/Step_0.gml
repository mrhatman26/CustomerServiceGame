if (global.questioning_customer != noone && global.asking_question == true){
	get_need_question(global.questioning_customer.need_number, global.questioning_customer.subneed, global.questioning_customer.item);
	if (question_text_drawn != global.question_text){
		question_draw_timer--;
		if (question_draw_timer < 1){
			question_text_drawn = string_insert(string_copy(global.question_text, global_question_index, 1), question_text_drawn, string_length(question_text_drawn));
			global_question_index++;
		}
	}
}