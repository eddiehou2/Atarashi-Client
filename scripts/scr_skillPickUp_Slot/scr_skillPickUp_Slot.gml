// scr_skillPickUp_Slot(itemId, slot);

if (global.skillsBar[argument1].skillId == -1) {
	global.skillsBar[argument1].skillId = argument0;
	return(true);
}
return(false);