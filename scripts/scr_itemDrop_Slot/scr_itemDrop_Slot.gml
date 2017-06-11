//scr_itemDrop_Slot(slot, quantity);

if (global.inventory[argument0].itemId != -1) {
//	scr_itemChange("-", "Inventory Bar", "HP_POTION", 2);
	if (global.inventory[argument0].quantity < argument1) {
		return(false);
	}
	else if (global.inventory[argument0].quantity == argument1) {
		global.inventory[argument0].itemId = -1;
		global.inventory[argument0].quantity = -1;
	}
	else {
		global.inventory[argument0].quantity -= argument1;
	}
	return(true);
} 
return(false);