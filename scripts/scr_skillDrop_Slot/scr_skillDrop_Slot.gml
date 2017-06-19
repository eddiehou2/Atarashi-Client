//scr_itemDrop_Slot(slot);

if (global.skillsBar[argument0].skillId != -1) {
//	scr_itemChange("-", "Inventory Bar", "HP_POTION", 2);


	global.skillsBar[argument0].skillId = -1;


	return(true);
} 
return(false);