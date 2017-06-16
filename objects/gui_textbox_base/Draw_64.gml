draw_self();

draw_set_color(c_black);
draw_set_alpha(1);
if (focused) {
	draw_rectangle(x, y, x + (16 * image_xscale), y + (16 * image_yscale), 2);
}

if (string_length(text) > 0 || focused) {
	draw_text(x + 3, y + 8, string(text));
}
else {
	draw_text(x + 3, y + 8, string(placeholder));
}
