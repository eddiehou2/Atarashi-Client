if (focused) {
	if (keyboard_key == vk_backspace) {
		text = string_copy(text, 0, string_length(text) - 1);
	}
	else if ((keyboard_key >= ord("A") && keyboard_key <= ord("Z")) || (keyboard_key >= ord("0") && keyboard_key <= ord("9")) || (keyboard_key >= vk_numpad0 && keyboard_key <= vk_numpad9)) {
		text += keyboard_lastchar;
	}
}