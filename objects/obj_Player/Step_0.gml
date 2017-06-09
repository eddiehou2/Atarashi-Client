// x movement
if (target_x > x) {
	x += 4
	sprite_index = spr_Hero_Right;
}
if (target_x < x) {
	x -= 4
	sprite_index = spr_Hero_Left;
}

// y movement
if (target_y > y) {
	y += 4
	sprite_index = spr_Hero_Down;
}
if (target_y < y) {
	y -= 4
	sprite_index = spr_Hero_Up;
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