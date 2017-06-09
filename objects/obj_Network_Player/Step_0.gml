if (target_x > x) {
	x += 4;
	sprite_index = spr_Hero_Right;
}
if (target_x < x) {
	x -= 4;
	sprite_index = spr_Hero_Left;
}
if (target_y > y) {
	y += 4;
	sprite_index = spr_Hero_Down;
}
if (target_y < y) {
	y -= 4;
	sprite_index = spr_Hero_Up;
}