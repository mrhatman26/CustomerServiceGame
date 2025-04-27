//Global vars
global.debug = true;
//Object vars
ghost_customer_timer = irandom_range(15, 60);
customer_queue = [noone, noone, noone, noone, noone, noone, noone, noone, noone, noone];
customer_create_timer = irandom_range(300, 1800);