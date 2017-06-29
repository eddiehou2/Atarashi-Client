// scr_itemPickUp_Slot(itemId, quantity, col, row);

if (global.characterInventory[argument2, argument3].itemId == -1) {
	global.characterInventory[argument2, argument3].itemId = argument0;
	global.characterInventory[argument2, argument3].quantity = argument1;
	scr_itemChange(argument2, argument3, argument0, argument1);
	return(true);
}
else if (global.characterInventory[argument2, argument3].itemId == argument0 && ((argument0 >= 0 && argument0 <= 99) || (argument0 >= 1100 && argument0 <= 1199))) {
	global.characterInventory[argument2, argument3].quantity += argument1;
	scr_itemChange(argument2, argument3, argument0, global.characterInventory[argument2].quantity);
	return(true);
}
return(false);

// 0-99 - Consumables
// 100-199 - Equipmeant Head
// 200-299 - Equipment Weapon
// 300-399 - Equipment Hands
// 400-499 - Equipment Legs
// 500-599 - Equipment Feet
// 600-699 - Equipment Necklace
// 700-799 - Equipment Offhand
// 800-899 - Equipment Body
// 900-999 - Equipment Arms
// 1000-1099 - Equipment Special
// 1100-1199 - Resources
// 1200-1299 - Keys
// 1300-1399 - skillBooks
