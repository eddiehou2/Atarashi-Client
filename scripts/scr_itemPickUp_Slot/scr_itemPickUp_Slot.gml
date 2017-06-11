// scr_itemPickUp_Slot(itemId, quantity, slot);

if (global.inventory[argument2].itemId == -1) {
	global.inventory[argument2].itemId = argument0;
	global.inventory[argument2].quantity = argument1;
	return(true);
}
return(false);