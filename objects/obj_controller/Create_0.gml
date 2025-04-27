//Global vars
global.debug = true;
global.queue_target_x = round(((room_width / 4) + (room_width / 2)) / 2);
global.queue_spaces = sprite_get_width(spr_customers) + round(sprite_get_width(spr_customers) / 0.5);
//Object vars
ghost_customer_timer = irandom_range(15, 60);
customer_queue = [noone, noone, noone, noone, noone, noone, noone, noone, noone, noone];
customer_create_timer = irandom_range(300, 1800);