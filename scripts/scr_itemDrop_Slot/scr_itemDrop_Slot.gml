//scr_itemDrop_Slot(col, row, quantity);

if (global.characterInventory[argument0, argument1].itemId != -1) {
//	scr_itemChange("-", "Inventory Bar", "HP_POTION", 2);
	if (global.characterInventory[argument0, argument1].quantity < argument2) {
		return(false);
	}
	else if (global.characterInventory[argument0, argument1].quantity == argument2) {
		global.characterInventory[argument0, argument1].itemId = -1;
		global.characterInventory[argument0, argument1].quantity = -1;
	}
	else {
		global.characterInventory[argument0, argument1].quantity -= argument2;
		
	}
	scr_itemChange(argument0, argument1, global.characterInventory[argument0, argument1].itemId, global.characterInventory[argument0, argument1].quantity);
	return(true);
} 
return(false);