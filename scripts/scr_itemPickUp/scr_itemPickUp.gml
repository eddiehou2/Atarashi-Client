// scr_itemPickUp(itemId, quantity);

var exist = false;
for (i = 0; i < global.characterInventoryMaxCol; i += 1) {
	for (j = 0; j < global.characterInventoryMaxRow; j++) {
		if (global.characterInventory[i, j].itemId == argument0) {
			global.characterInventory[i, j].quantity += argument1;
			scr_itemChange(i, j, argument0, global.characterInventory[i, j].quantity);
			return(true);
		}
	}
}

for (i = 0; i < maxItems; i += 1) {
	for (j = 0; j < global.characterInventoryMaxRow; j++) {
		if (global.characterInventory[i, j].itemId == -1) {
			global.characterInventory[i, j].itemId = argument0;
			global.characterInventory[i, j].quantity = argument1;
			scr_itemChange(i, j, argument0, argument1);
			return(true);
		}
	}
}
return(false);