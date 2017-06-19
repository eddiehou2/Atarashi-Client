// scr_useItem(col, row);
var itemObj = global.characterInventory[col, row];

if (itemObj.itemId == items.hp_potion) {
	global.cur_hp += 20;
	if (global.cur_hp > global.max_hp) {
		global.cur_hp = global.max_hp;
	}
	scr_itemDrop_Slot(argument0, argument1, 1);
	scr_statChange("cur_hp", global.cur_hp);
}
if (itemObj.itemId == items.mp_potion) {
	global.cur_mp += 20;
	if (global.cur_mp > global.max_mp) {
		global.cur_mp = global.max_mp;
	}
	scr_itemDrop_Slot(argument0, argument1, 1);
	scr_statChange("cur_mp", global.cur_mp);
}
show_debug_message("PRESSED " + string(itemObj.itemId));