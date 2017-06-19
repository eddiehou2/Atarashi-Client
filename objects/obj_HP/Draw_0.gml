var x1, x2, y1, y2;
var adjustment = 0;
if (showSkillsBar) {
	adjustment = 48;
}


x1 = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/4;
x2 = x1 + camera_get_view_width(view_camera[0])/2;
y2 = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])-24 - adjustment;
y1 = y2 - 16;

draw_healthbar(x1, y1, x2, y2, global.cur_hp/global.max_hp*100, c_dkgray, c_red, c_lime, 0, true, true);