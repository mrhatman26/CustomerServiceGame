my_body = irandom(sprite_get_number(spr_customers));
size_increase = 3
my_queue_pos = 0;
queue_pos_updated = true;
target_pos = 0;
direction = 180
need_number = irandom_range(0, array_length(global.needs) - 1);
subneed_number = irandom_range(0, array_length(global.needs[need_number]) - 1);