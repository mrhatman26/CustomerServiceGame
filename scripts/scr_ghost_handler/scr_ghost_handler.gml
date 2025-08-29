function spawn_ghost(spawn_timer){
	spawn_timer--;
	if (spawn_timer < 1){
		instance_create_layer(irandom_range(0 + sprite_get_width(spr_customers_old), room_width - sprite_get_width(spr_customers_old)), irandom_range(0 + sprite_get_width(spr_customers_old), room_height - sprite_get_width(spr_customers_old)), "Instances", obj_customer_ghost);
		spawn_timer = irandom_range(15, 60);
	}
	return spawn_timer
}