function get_need_question(need, subneed, item){
	switch(need){
		case 0: //Info
			if (subneed == 0){ //Info -> Where is...?
				global.question_text = "Where is " + string(item) + "?";
			}
			else{ // Info -> How much is...?
				global.question_text = "How much is " + string(item) + "?";
			}
			break;
		case 1:
			global.question_text = "TBD!!";
			break;
		case 2:
			global.question_text = "TBD!!!!";
			break;
	}
}