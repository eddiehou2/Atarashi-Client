// scr_itemPickUp(itemId, quantity);

var exist = false;
for (i = 0; i < maxItems; i += 1) {
	if (global.inventory[i].itemId == argument0) {
		global.inventory[i].quantity += argument1;
		return(true);
	}
}

for (i = 0; i < maxItems; i += 1) {
	if (global.inventory[i].itemId == -1) {
		global.inventory[i].itemId = argument0;
		global.inventory[i].quantity = argument1;
		return(true);
	}
}
return(false);