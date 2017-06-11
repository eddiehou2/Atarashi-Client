with(other) {
	other.name = name;
}

if (!touched && name != "") {
	event_user(0);
	touched = true;
}

show_debug_message("TOUCHED");