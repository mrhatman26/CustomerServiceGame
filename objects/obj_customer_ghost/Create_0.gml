if (choose(true, false) == true){
	direction = 0;
	image_xscale = -1;
}
else{
	direction = 180;
}
image_alpha = 0;
spawned = false;
life_timer = irandom_range(90, 180);
speed = irandom_range(3, 6);
size_increase = 2
my_body = irandom(sprite_get_number(spr_customers));
max_alpha = 0.6;
depth = 50;