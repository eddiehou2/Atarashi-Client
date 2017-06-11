var itemObj = mouseItem;
if (itemObj.itemId != -1) {
	x = mouse_x;
	y = mouse_y;
	draw_sprite(spr_items, itemObj.itemId, x, y);
}