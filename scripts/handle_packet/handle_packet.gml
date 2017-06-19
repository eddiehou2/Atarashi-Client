//argument0: data buffer
var command = buffer_read(argument0, buffer_string);
show_debug_message("Networking Event: " + string(command));
switch (command) {

	case "HELLO":
		server_time = buffer_read(argument0, buffer_string);
		room_goto_next();
		show_debug_message("Server welcomes you @ " + server_time);
		break;
	case "LOGIN":
		window_set_size(1600, 900);
		window_set_position(100,100);
		display_set_gui_size(960, 540);
		surface_resize(application_surface, 960, 540);
		scr_playerObjCreate(argument0, "LOGIN");
		break;
	case "REGISTER":
		status = buffer_read(argument0, buffer_string);
		if (status == "TRUE") {
			show_message("Register Success: Please login.");
		}
		else {
			show_message("Register Failed: Username taken.");
		}
		break;
	case "POS":
		username = buffer_read(argument0, buffer_string);
		target_x = buffer_read(argument0, buffer_u16);
		target_y = buffer_read(argument0, buffer_u16);
		
		foundPlayer = -1;
		with(obj_Network_Player) {
			if (name == other.username) {
				other.foundPlayer = id;
				break;
			}
		}
		if (foundPlayer != -1) {
			with(foundPlayer) {
				target_x = other.target_x;
				target_y = other.target_y;
			}
		}
		else {
			with(instance_create_layer(target_x, target_y, "Instances", obj_Network_Player)) {
				name = other.username;
			}
		}
		break;
	case "STAT":
		status = buffer_read(argument0, buffer_string);
		statName = buffer_read(argument0, buffer_string);
		if (status == "TRUE") {
			show_debug_message("Stat Change Success: " + string(statName) + " has been updated.");
		}
		else {
			show_message("Stat Change Failed: Your " + string(statName) + " has failed to update due to invalid statValue or server issues.");
		}
		break;
	case "IATTACK":
		status = buffer_read(argument0, buffer_string);
		if (status == "TRUE") {
			username = buffer_read(argument0, buffer_string);
			damage = buffer_read(argument0, buffer_u16);
			current_hp = buffer_read(argument0, buffer_u16);
			maximum_hp = buffer_read(argument0, buffer_u16);
			with(obj_Network_Player) {
				if (name == other.username) {
					self.cur_hp = other.current_hp;
					self.max_hp = other.maximum_hp;
					self.hostile = true;
					self.alarm[0] = room_speed * 20;
				}
			}
		}
		else {
			show_debug_message("Attack failed: did not hit anything");
		}
		break;
	case "UATTACK":
		username = buffer_read(argument0, buffer_string);
		damage = buffer_read(argument0, buffer_u16);
		global.cur_hp = buffer_read(argument0, buffer_u16);
		current_hp = buffer_read(argument0, buffer_u16);
		maximum_hp = buffer_read(argument0, buffer_u16);
		with(obj_Network_Player) {
			if (name == other.username) {
				self.cur_hp = other.current_hp;
				self.max_hp = other.maximum_hp;
				self.hostile = true;
				self.alarm[0] = room_speed * 20;
			}
		}
		break;
	case "IDIE":
		scr_playerDead();
		break;
	case "UDIE":
		username = buffer_read(argument0, buffer_string);
		killedBy = buffer_read(argument0, buffer_string);
		with (obj_Network_Player) {
			if (name == other.username) {
				show_debug_message(string(name) + " has been killed by " + string(other.killedBy));
				instance_destroy();
			}
		}
		break;
	case "REBORN":
		scr_playerObjCreate(argument0, "REBORN");
		break;
	case "REVIVE":
		scr_playerObjCreate(argument0, "REVIVE");
		break;
	case "INVENTORY":
		var invCol = buffer_read(argument0, buffer_u16);
		var invRow = buffer_read(argument0, buffer_u16);
		var itemId = buffer_read(argument0, buffer_u16);
		var quantity = buffer_read(argument0, buffer_u16);
		global.characterInventory[invCol, invRow].itemId = itemId;
		global.characterInventory[invCol, invRow].quantity = quantity;
		show_debug_message("Loading invItem from DB");
		break;
		
		
}