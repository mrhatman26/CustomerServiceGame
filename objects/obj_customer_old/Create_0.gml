my_body = irandom(sprite_get_number(spr_customers_old));
size_increase = 3
my_queue_pos = 0;
queue_pos_updated = true;
target_pos = 0;
direction = 180
//Locking needs to Info -> Where is? for now.
need_number = 0;//irandom_range(0, array_length(global.needs) - 1);
subneed_number = 0;//irandom_range(0, array_length(global.needs[need_number]) - 1);
queue_paitence = irandom_range(120, 360);
item_no = irandom_range(0, array_length(global.items));
queuing = true;