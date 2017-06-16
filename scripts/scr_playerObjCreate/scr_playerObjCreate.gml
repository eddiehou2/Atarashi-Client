// scr_playerObjCreate(dataBuffer, operation);
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
	
	foundLogic = -1;
	with (obj_Logic) {
		other.foundLogic = id;
	}
	
	if (foundLogic == -1) {
		foundLogic = instance_create_depth(0, 0, 9999, obj_Logic);
	}
	
	with(foundLogic) {
		self.target_x = other.target_x;
		self.target_y = other.target_y;
		self.name = other.name;
		self.smax_hp = other.smax_hp;
		self.scur_hp = other.scur_hp;
		self.smax_mp = other.smax_mp;
		self.scur_mp = other.scur_mp;
		self.slevel = other.slevel;
		self.sexperience = other.sexperience;
		self.goto_room = other.goto_room;
	}
	
}
else {
	switch (argument1) {
		case "LOGIN": 
			show_message("Login Failed: User doesn't exist or password didn't match");
			break;
		case "REBORN":
			show_message("Reborn Failed: Reason Unknown.");
			break;
		case "REVIVE":
			show_message("Revive Failed: No revival item in inventory.");
			break;
	}
}