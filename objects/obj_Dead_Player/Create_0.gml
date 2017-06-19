instance_create_depth(camera_get_view_width(view_camera[0])/4 + 20, camera_get_view_height(view_camera[0])*3/4 - 40, -2100, gui_btn_Revive);
instance_create_depth(camera_get_view_width(view_camera[0])*3/4 -20 -64, camera_get_view_height(view_camera[0])*3/4 - 40, -2100, gui_btn_Reborn);

with(gui_btn_Reborn) {
	image_xscale = 4;
	image_yscale = 2;
}
with(gui_btn_Revive) {
	image_xscale = 4;
	image_yscale = 2;
}