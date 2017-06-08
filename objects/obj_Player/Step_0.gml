// x movement
if (target_x > x) {
	x += 4
}
if (target_x < x) {
	x -= 4
}

// y movement
if (target_y > y) {
	y += 4
}
if (target_y < y) {
	y -= 4
}

// No longer moving
if (target_x == x && target_y == y) {
	moving = false;
}

if (keyboard_check(vk_left) && !moving && place_free(x - 33, y)) {
	target_x -= 32;
	moving = true;
	event_user(0);
}
if (keyboard_check(vk_right) && !moving && place_free(x + 33, y)) {
	target_x += 32;
	moving = true;
	event_user(0);
} 
if (keyboard_check(vk_up) && !moving && place_free(x, y - 33)) {
	target_y -= 32;
	moving = true;
	event_user(0);
} 
if (keyboard_check(vk_down) && !moving && place_free(x, y + 33)) {
	target_y += 32;
	moving = true;
	event_user(0);
} 