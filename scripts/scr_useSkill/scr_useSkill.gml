// scr_useItem(slot);
var slot = argument0;
var skillObj = global.skillsBar[slot];
facingDirection = "";
name = "";
var charX = 0;
var charY = 0;


with(obj_Player) {
	attack = true;
	other.facingDirection = facingDirection;
	other.name = name;
	other.charX = x;
	other.charY = y;
}

switch (skillObj.skillId) {

	case 0:
		with(obj_Player) {
			visible = false;
		}
		with(instance_create_depth(x, y, -100, obj_Skill0)) {
			facingDirection = other.facingDirection
			name = other.name;
			x = other.charX;
			y = other.charY;
			show_debug_message("exists");
		}
		break;
	case 1:
		break;



}

show_debug_message("PRESSED " + string(skillObj.skillId));