// scr_useItem(slot);
var slot = argument0;
var item = global.inventory[slot];

if (item == items.hp_potion) {
	global.cur_hp += 20;
	if (global.cur_hp > global.max_hp) {
		global.cur_hp = global.max_hp;
	}
	scr_itemDrop_Slot(slot);
	scr_statChange("cur_hp", global.cur_hp);
}
if (item == items.mp_potion) {
	global.cur_mp += 20;
	if (global.cur_mp > global.max_mp) {
		global.cur_mp = global.max_mp;
	}
	scr_itemDrop_Slot(slot);
	scr_statChange("cur_mp", global.cur_mp);
}
show_debug_message("PRESSED " + string(item));