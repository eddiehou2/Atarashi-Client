var skillObj = global.skillsBar[slot];
var click = mouse_check_button_pressed(mb_left);
var use = mouse_check_button_pressed(mb_right);
var boxSize = 16;

if (showSkillsBar) {
	if (abs(mouse_x - x) < boxSize && abs(mouse_y - y) < boxSize) {
		draw_set_color(c_white);
		draw_set_alpha(0.2);
		draw_rectangle(x-boxSize,y-boxSize,x+boxSize,y+boxSize,0)
		draw_set_alpha(1);
	
		if (click) {
			var skillObjSkillId = skillObj.skillId;
			if (skillObj.skillId != -1) {
				scr_skillDrop_Slot(slot);
			}
			if (mouseSkill.skillId != -1) {
				scr_skillPickUp_Slot(mouseSkill.skillId, slot);
			}
			mouseSkill.skillId = skillObjSkillId;
		}
	
		if (use) {
			scr_useSkill(slot);
		}
	}

	if (skillObj.skillId != -1) {
		draw_sprite_ext(spr_skills, skillObj.skillId, x, y, 1, 1, 0, c_white, 1);
	//	draw_set_color(c_orange);
	//	draw_text(x-3, y-3, string(skillObj.level));
	}
}