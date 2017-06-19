// equipmentItem 
var unequip = mouse_check_button_pressed(mb_left);
var unequipToInv = mouse_check_button_pressed(mb_right);
var boxSize = 16;

if (showInv) {

	if (abs(mouse_x - x) < boxSize && abs(mouse_y - y) < boxSize) {
		draw_set_color(c_white);
		draw_set_alpha(0.2);
		draw_rectangle(x-boxSize,y-boxSize,x+boxSize,y+boxSize,0)
		draw_set_alpha(1);
	
		if (unequip) {
			if (equipmentItem.itemId != -1) {
				mouseItem.itemId = equipmentItem.itemId;
				mouseItem.quantity = 1;
				equipmentItem.itemId = -1;
				equipmentItem.quantity = -1;
			}
		}
	
		if (unequipToInv) {
			scr_itemPickUp(equipmentItem.itemId, 1);
			equipmentItem.itemId = -1;
			equipmentItem.quantity = -1;
		}
	}
	
	
	if (equipmentItem.itemId != -1) {
		draw_sprite_ext(spr_items, equipmentItem.itemId, x, y, 1, 1, 0, c_white, 1);
		draw_set_color(c_orange);
		draw_text(x-3, y-3, string(equipmentItem.quantity));
	}
}