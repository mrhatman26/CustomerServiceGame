//Pre-Checks
if (object_exists(obj_item_controller) == false){
	instance_create_layer(x  + 96, y, "Instances", obj_item_controller);
}
//Global vars
global.debug = true;
global.queue_target_x = round(((room_width / 4) + (room_width / 2)) / 2);
global.queue_spaces = sprite_get_width(spr_customers) + round(sprite_get_width(spr_customers) / 0.5);
global.needs[0] = [0, 1]; //0 = Where is? 1 = How Much is?
global.needs[1] = [0, 1]; //0 = Has Receipt 1 = No receipt (do not return)
global.needs[2] = [0]; //Only one option for now.
global.controller = self;
//Object vars
ghost_customer_timer = irandom_range(15, 60);
customer_queue = generate_repeating_array(6, noone);
customer_create_timer = irandom_range(300, 1800);