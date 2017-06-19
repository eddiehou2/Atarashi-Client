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

draw_set_color(shadowColor);
draw_set_alpha(1);
draw_ellipse(x-10, y+10, x+10, y+15, 0);


draw_self();
draw_set_color(c_green);
draw_text(x - string_width(name)/2, y - 34, name);
