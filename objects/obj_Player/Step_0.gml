// x movement
if (!attack) {
	if (target_x > x) {
		x += 4
		sprite_index = spr_Hero_Right;
		facingDirection = "right";
	}
	if (target_x < x) {
		x -= 4
		sprite_index = spr_Hero_Left;
		facingDirection = "left";
	}

	// y movement
	if (target_y > y) {
		y += 4
		sprite_index = spr_Hero_Down;
		facingDirection = "down";
	}
	if (target_y < y) {
		y -= 4
		sprite_index = spr_Hero_Up;
		facingDirection = "up";
	}
}

// No longer moving
if (target_x == x && target_y == y) {
	moving = false;
}

var x_move_radius = 12;
var y_move_radius = 16;
if (keyboard_check(vk_left) && !moving && place_free(x - (x_move_radius+1), y)) {
	target_x -= x_move_radius;
	moving = true;
	event_user(0);
}
if (keyboard_check(vk_right) && !moving && place_free(x + (x_move_radius+1), y)) {
	target_x += x_move_radius;
	moving = true;
	event_user(0);
} 
if (keyboard_check(vk_up) && !moving && place_free(x, y - (y_move_radius+1))) {
	target_y -= y_move_radius;
	moving = true;
	event_user(0);
} 
if (keyboard_check(vk_down) && !moving && place_free(x, y + (y_move_radius+1))) {
	target_y += y_move_radius;
	moving = true;
	event_user(0);
} 

// Attack 
if (keyboard_check_pressed(vk_space) && !attack) {
	with(instance_create_depth(x, y, -100, obj_PlayerAttack)) {
		facingDirection = other.facingDirection
		name = other.name;
		show_debug_message("exists");
	}
	attack = true;
	visible = false;
}