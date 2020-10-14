draw_surface(surf, 0, 0);
var temp = draw_get_color();
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(0, 0, w, h, 0);
draw_set_color(temp);
draw_set_alpha(1.0);