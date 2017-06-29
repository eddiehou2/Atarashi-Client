// equipmentItem 
var click = mouse_check_button_pressed(mb_left);
var unequipToInv = mouse_check_button_pressed(mb_right);
var boxSize = 16;

if (global.showCharacterInfo) {

	if (abs(global.gui_mouse_x - x) < boxSize && abs(global.gui_mouse_y - y) < boxSize) {
		draw_set_color(c_white);
		draw_set_alpha(0.2);
		draw_rectangle(x-boxSize,y-boxSize,x+boxSize,y+boxSize,0)
		draw_set_alpha(1);
	
		if (click) {
			if (global.characterEquipment[slot].itemId != -1) {
				var tempItemId = global.characterEquipment[slot].itemId;
				var status;
				if (mouseItem.itemId == -1) {
					status = scr_equipmentUnequip_Slot(slot);
				}
				else {
					status = scr_equipmentEquip_Slot(mouseItem.itemId, slot);
				}
				
				if (status) {
					mouseItem.itemId = tempItemId;
					mouseItem.quantity = 1;
				}
			}
			else if (mouseItem.itemId != -1) {
				var status = scr_equipmentEquip_Slot(mouseItem.itemId, self.slot);
				if (status) {
					mouseItem.itemId = -1;
					mouseItem.quantity = -1;
				}
			}
		}
	
		if (unequipToInv && global.characterEquipment[slot].itemId != -1) {
			scr_equipmentUnequip_Slot(self.slot);
		}
	}
	
	
	if (global.characterEquipment[slot].itemId != -1) {
		draw_sprite_ext(spr_items, global.characterEquipment[slot].itemId, x, y, 1, 1, 0, c_white, 1);
//		draw_set_color(c_orange);
//		draw_text(x-3, y-3, string(global.characterEquipment[slot].quantity));
	}
}