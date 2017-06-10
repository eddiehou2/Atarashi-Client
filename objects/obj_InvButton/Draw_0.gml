var item = global.inventory[slot];
var click = mouse_check_button_pressed(mb_left);
var use = mouse_check_button_pressed(mb_right);

if (abs(mouse_x - x) < 16 && abs(mouse_y - y) < 16) {
	draw_set_color(c_white);
	draw_set_alpha(0.2);
	draw_rectangle(x-16,y-16,x+16,y+16,0)
	draw_set_alpha(1);
	
	if (click) {
		if (item != -1) {
			scr_itemDrop_Slot(slot);
		}
		if (mouseItem != -1) {
			scr_itemPickUp_Slot(mouseItem, slot);
		}
		mouseItem = item;
	}
	
	if (use) {
		scr_useItem(slot);
	}
}

if (item != -1) {
	draw_sprite(spr_items, item, x, y);
}
