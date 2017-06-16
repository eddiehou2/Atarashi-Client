event_inherited();

if (string_length(global.playerUsername) > 0 && position_meeting(global.gui_mouse_x, global.gui_mouse_y, self) && mouse_check_button_released(mb_left)) {
	var reborn_packet = buffer_create(1, buffer_grow, 1);
	buffer_write(reborn_packet, buffer_string, "reborn");
	buffer_write(reborn_packet, buffer_string, global.playerUsername);
	
	network_write(Network.socket, reborn_packet);
}