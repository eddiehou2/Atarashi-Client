var itemObj = global.characterInventory[col, row];

var click = mouse_check_button_pressed(mb_left);
var use = mouse_check_button_pressed(mb_right);
var boxSize = 16;

if (invType == "InventoryBar" && showInv) || (invType == "CharacterInventory" && showCharacterInfo) {
	if (abs(global.gui_mouse_x - x) < boxSize && abs(global.gui_mouse_y - y) < boxSize) {
		show_debug_message("inv: " + string(x) + "//" + string(y) + "  //  " + string(col) + "//" + string(row));
		draw_set_color(c_white);
		draw_set_alpha(0.2);
		draw_rectangle(x-boxSize,y-boxSize,x+boxSize,y+boxSize,0)
		draw_set_alpha(1);
	
		if (click) {
			var itemObjItemId = -1;
			var itemObjQuantity = -1;
			if (itemObj.itemId != -1 && itemObj.itemId != mouseItem.itemId) {
				itemObjItemId = itemObj.itemId;
				itemObjQuantity = itemObj.quantity;
				scr_itemDrop_Slot(col, row, itemObj.quantity);
				show_debug_message("dropped");
			}
			if (mouseItem.itemId != -1) {
				scr_itemPickUp_Slot(mouseItem.itemId, mouseItem.quantity, col, row);
				show_debug_message("pickedup");
			}
			mouseItem.itemId = itemObjItemId;
			mouseItem.quantity = itemObjQuantity;
			
		}
	
		if (use) {
			scr_useItem(col, row);
		}
	}
	
	
	if (itemObj.itemId != -1) {
		draw_sprite_ext(spr_items, itemObj.itemId, x, y, 1, 1, 0, c_white, 1);
		draw_set_color(c_orange);
		draw_text(x-3, y-3, string(itemObj.quantity));
	}
}