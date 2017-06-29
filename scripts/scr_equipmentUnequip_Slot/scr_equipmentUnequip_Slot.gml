// scr_equipmentUnequip_Slot(slot);
// slot = 0 - 9

var equipment = global.characterEquipment[argument0];
if (equipment.itemId != -1) {
	equipment.itemId = -1;
	scr_equipmentChange(-1, argument0);
	return(true);
}
return(false);