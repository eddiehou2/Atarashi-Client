var x1, x2, y1, y2;
var adjustment = 0;
if (showSkillsBar) {
	adjustment = 48;
}


x1 = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/4;
x2 = x1 + camera_get_view_width(view_camera[0])/2;
y2 = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])-16 - adjustment;
y1 = y2 - 8;

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_healthbar(x1, y1, x2, y2, global.cur_hp/global.max_hp*100, c_dkgray, c_red, c_lime, 0, true, true);
draw_text((x1+x2)/2,(y1+y2)/2,string(global.cur_hp) + "/" + string(global.max_hp));