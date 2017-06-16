var itemObj = global.inventory[slot];
var click = mouse_check_button_pressed(mb_left);
var use = mouse_check_button_pressed(mb_right);
var boxSize = 16;

if (abs(mouse_x - x) < boxSize && abs(mouse_y - y) < boxSize) {
	draw_set_color(c_white);
	draw_set_alpha(0.2);
	draw_rectangle(x-boxSize,y-boxSize,x+boxSize,y+boxSize,0)
	draw_set_alpha(1);
	
	if (click) {
		if (itemObj.itemId != -1) {
			scr_itemDrop_Slot(slot, itemObj.quantity);
		}
		if (mouseItem.itemId != -1) {
			scr_itemPickUp_Slot(mouseItem.itemId, mouseItem.quantity, slot);
		}
		mouseItem = itemObj;
	}
	
	if (use) {
		scr_useItem(slot);
	}
}

if (itemObj.itemId != -1) {
	draw_sprite_ext(spr_items, itemObj.itemId, x, y, 1, 1, 0, c_white, 1);
	draw_set_color(c_orange);
	draw_text(x-3, y-3, string(itemObj.quantity));
}
