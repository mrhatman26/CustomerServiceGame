if (spawned == false){
	image_alpha = image_alpha + 0.01;
	if (image_alpha >= 1){
		image_alpha = 1;
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
if (x < -74 || x > 1994 || y < -212 || y > 1292){ //Destroy when off screen
	instance_destroy();
}