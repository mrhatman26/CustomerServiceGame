my_body = choose(0, 2);
my_outline = my_body + 1;
my_colour = make_colour_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255));
mood = global.moods[irandom_range(0, array_length(global.moods) - 1)]
my_face = array_get_index(global.moods, mood);
//ToDo