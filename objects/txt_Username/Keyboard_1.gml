event_inherited();
if (focused) {
	if (keyboard_key == vk_tab) {
		focused = false;
		txt_Password.focused = true;
		show_debug_message("TAB");
	}
}