var itemObj = mouseItem;


if (itemObj.itemId != -1) {
	draw_set_alpha(1);
	x = global.gui_mouse_x;
	y = global.gui_mouse_y;
	draw_sprite(spr_items, itemObj.itemId, x, y);
	if (itemObj.quantity > 1) {
		draw_set_color(c_orange);
		draw_text(x-3, y-3, string(itemObj.quantity));
	}
}