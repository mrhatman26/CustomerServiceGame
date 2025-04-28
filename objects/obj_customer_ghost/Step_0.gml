if (spawned == false){
	image_alpha = image_alpha + 0.01;
	if (image_alpha >= max_alpha){
		image_alpha = max_alpha;
		spawned = true;
	}
}
else{
	life_timer--;
	if (life_timer < 1){
		image_alpha = image_alpha - 0.01;
		if (image_alpha < 0.01){
			instance_destroy();
		}
	}
}
if (x < 0 - (sprite_get_width(spr_customers) * size_increase) || x > room_width + (sprite_get_width(spr_customers) * size_increase) || y < 0 - (sprite_get_width(spr_customers) * size_increase) || y > room_height + (sprite_get_width(spr_customers) * size_increase)){ //Destroy when off screen
	instance_destroy();
}