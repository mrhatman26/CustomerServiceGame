//Global vars
global.debug = true;
global.queue_target_x = round(((room_width / 4) + (room_width / 2)) / 2);
global.queue_spaces = sprite_get_width(spr_customers) + round(sprite_get_width(spr_customers) / 0.5);
global.needs[0] = [0, 1]; //0 = Where is? 1 = How Much is?
global.needs[1] = [0, 1]; //0 = Has Receipt 1 = No receipt (do not return)
global.needs[2] = [0]; //Only one option for now.
//Object vars
ghost_customer_timer = irandom_range(15, 60);
customer_queue = [noone, noone, noone, noone, noone, noone, noone, noone, noone, noone];
customer_create_timer = irandom_range(300, 1800);