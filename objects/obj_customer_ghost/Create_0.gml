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
spindex = 0//choose(0, 1);
size_increase = irandom_range(1, 3);