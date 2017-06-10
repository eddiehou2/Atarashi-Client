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
		status = buffer_read(argument0, buffer_string);
		if (status == "TRUE") {
			target_room = buffer_read(argument0, buffer_string);
			target_x = buffer_read(argument0, buffer_u16);
			target_y = buffer_read(argument0, buffer_u16);
			name = buffer_read(argument0, buffer_string);
			smax_hp = buffer_read(argument0, buffer_u16);
			scur_hp = buffer_read(argument0, buffer_u16);
			smax_mp = buffer_read(argument0, buffer_u16);
			scur_mp = buffer_read(argument0, buffer_u16);
			slevel = buffer_read(argument0, buffer_u16);
			sexperience = buffer_read(argument0, buffer_u16);
			
			
			goto_room = asset_get_index(target_room);
			room_goto(goto_room);
			// Initiate a player object in this room
			with(instance_create_depth(target_x, target_y, -100, obj_Player)) {
				name = other.name;
				max_hp = other.smax_hp;
				cur_hp = other.scur_hp;
				max_mp = other.smax_mp;
				cur_mp = other.scur_mp;
				level = other.slevel;
				experience = other.sexperience;
			};
		}
		else {
			show_message("Login Failed: User doesn't exist or password didn't match");
		}
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
		
}