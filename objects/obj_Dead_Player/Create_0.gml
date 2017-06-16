instance_create_depth(view_wport[0]/4 + 20, view_hport[0]*3/4 - 40, -2100, gui_btn_Revive);
instance_create_depth(view_wport[0]*3/4 -20 -64, view_hport[0]*3/4 - 40, -2100, gui_btn_Reborn);

with(gui_btn_Reborn) {
	image_xscale = 4;
	image_yscale = 2;
}
with(gui_btn_Revive) {
	image_xscale = 4;
	image_yscale = 2;
}