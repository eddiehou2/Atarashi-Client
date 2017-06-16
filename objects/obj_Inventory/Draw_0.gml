var invBarHeight = 48;

if (showInv) {
	var x1, x2, y1, y2;
	x1 = camera_get_view_x(view_camera[0]);
	x2 = x1 + view_wport[0];
	y1 = camera_get_view_y(view_camera[0]);
	y2 = y1 + invBarHeight;

	
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(x1,y1,x2,y2,0);
	draw_set_alpha(1);
	
	for (i = 0; i < maxItems; i += 1) {
		var ix = x1 + invBarHeight/2 + (i*40);
		var iy = y1 + invBarHeight/2;
		
		draw_sprite_ext(spr_border, 0, ix, iy, 1, 1, 0, c_white, 1);
		button[i].x = ix;
		button[i].y = iy;
	}
}