// scr_equipmentEquip_Slot(itemId, slot);
// slot = 0 - 9

var equipment = global.characterEquipment[argument1];
var rangeStart = ((argument1 + 1) * 100)
var rangeEnd = rangeStart + 99;
if (argument0 >= rangeStart && argument0 <= rangeEnd) {
	equipment.itemId = argument0;
	scr_equipmentChange(argument0, argument1);
	return(true);	
}
return(false);


// 1000-1999 - Equipmeant Head
// 2000-2999 - Equipment Weapon
// 3000-3999 - Equipment Hands
// 4000-4999 - Equipment Legs
// 5000-5999 - Equipment Feet
// 6000-6999 - Equipment Necklace
// 7000-7999 - Equipment Offhand
// 8000-8999 - Equipment Body
// 9000-9999 - Equipment Arms
// 10000-10999 - Equipment Special