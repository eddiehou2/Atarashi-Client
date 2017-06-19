// scr_itemPickUp_Slot(itemId, quantity, col, row);

if (global.characterInventory[argument2, argument3].itemId == -1) {
	global.characterInventory[argument2, argument3].itemId = argument0;
	global.characterInventory[argument2, argument3].quantity = argument1;
	scr_itemChange(argument2, argument3, argument0, argument1);
	return(true);
}
else if (global.characterInventory[argument2, argument3].itemId == argument0) {
	global.characterInventory[argument2, argument3].quantity += argument1;
	scr_itemChange(argument2, argument3, argument0, global.characterInventory[argument2].quantity);
	return(true);
}
return(false);