var skillObj = mouseSkill;
if (skillObj.skillId != -1) {
	x = mouse_x;
	y = mouse_y;
	draw_sprite(spr_skills, skillObj.skillId, x, y);
}