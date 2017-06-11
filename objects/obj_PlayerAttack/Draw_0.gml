switch(facingDirection) {
	case "up":
		sprite_index = spr_Hero_Attack_Up;
		break;
	case "down":
		sprite_index = spr_Hero_Attack_Down;
		break;
	case "left":
		sprite_index = spr_Hero_Attack_Left;
		break;
	case "right":
		sprite_index = spr_Hero_Attack_Right;
		break;
}

draw_self();