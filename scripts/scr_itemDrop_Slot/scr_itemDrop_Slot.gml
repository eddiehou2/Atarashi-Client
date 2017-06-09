//scr_itemDrop_Slot(slot);

if (global.inventory[argument0] != -1) {
	global.inventory[argument0] = -1;
	return(true);
} 
return(false);