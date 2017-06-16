if (ready) {
	global.playerUsername = name;
	if (scur_hp > 0) {
		
		with(obj_Dead_Player) {
			instance_destroy();
		}
		
		// Initiate a player object in this room
		with(instance_create_depth(target_x, target_y, -100, obj_Player)) {
			self.name = other.name;
			global.max_hp = other.smax_hp;
			global.cur_hp = other.scur_hp;
			global.max_mp = other.smax_mp;
			global.cur_mp = other.scur_mp;
			global.level = other.slevel;
			global.experience = other.sexperience;
			
			show_debug_message(string(instance_exists(obj_Player)));
		};
		var hp = instance_create_depth(0, 0, -1000, obj_HP);
		var mp = instance_create_depth(0, 0, -1000, obj_MP);

	}
	else {
		instance_create_depth(0, 0, -2000, obj_Dead_Player);
	//	view_camera[0] = camera_create_view(target_x, target_y, 640, 480, 0);
	//	camera_set_default(view_camera[0]);
	//	view_set_camera(view_current, view_camera[0]);
	}
	show_debug_message("REVIVE NEEDED: " + string(target_x) + "//" + string(target_y) + " // " + string(view_get_xport(view_camera[0])) + "//" + string(view_get_yport(view_camera[0])) + " // " + string(view_wport[0]) + "//" + string(view_hport[0]));
	ready = false;
	goto_room = -1;
}

if (goto_room == room) {
	ready = true;
}

if (instance_exists(obj_Player) && global.cur_hp <= 0) {
	global.cur_hp = 0;
	scr_playerDead();
}

global.gui_mouse_x = mouse_x - camera_get_view_x(view_camera[0]);
global.gui_mouse_y = mouse_y - camera_get_view_y(view_camera[0]) + 30;