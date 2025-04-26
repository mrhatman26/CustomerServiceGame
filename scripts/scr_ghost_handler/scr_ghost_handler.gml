function spawn_ghost(spawn_timer){
	spawn_timer--;
	if (spawn_timer < 1){
		instance_create_layer(irandom_range(74, 1846), irandom_range(74, 1006), "Instances", obj_customer_ghost);
		spawn_timer = irandom_range(15, 60);
	}
	return spawn_timer
}