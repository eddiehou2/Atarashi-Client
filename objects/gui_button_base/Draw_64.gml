
if (position_meeting(global.gui_mouse_x, global.gui_mouse_y, self)) {
	show_debug_message("GUIMOUSE: " + string(global.gui_mouse_x) + "//" + string(global.gui_mouse_y) + " // MOUSE: " + string(mouse_x) + "//" + string(mouse_y)); 
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_gray, 1.0);
}
else {
	draw_self();
}

draw_set_alpha(1);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x+3, y+8, string(text));