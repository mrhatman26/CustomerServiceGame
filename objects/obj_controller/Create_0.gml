//Pre-Checks
if (object_exists(obj_item_controller) == false){
	instance_create_layer(x  + 96, y, "Instances", obj_item_controller);
}
if (object_exists(obj_question) == false){
	instance_create_layer(x + 160, y, "Instances", obj_question);
}
//Global vars
global.debug = true;
global.moods = ["normal", "happy", "disappointed", "surprised", "angry", "passive_aggressive", "very_angry", "surprised_anger", "very_happy"];
//Object vars
ghost_customer_timer = irandom_range(15, 60);
customer_create_timer = irandom_range(300, 1800);
title_test = string_title("john smith!");