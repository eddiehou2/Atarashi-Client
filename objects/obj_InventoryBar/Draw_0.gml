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
	
	for (i = 0; i < global.characterInventoryMaxCol; i += 1) {
		for (j = 0; j < 2; j++) {
			var ix = invBarHeight/2 + (i*40) + (j*40*global.characterInventoryMaxCol);
			var iy = invBarHeight/2;
		
			draw_sprite_ext(spr_border, 0, x1+ix, y1+iy, 1, 1, 0, c_white, 1);
			invButtons[i, global.characterInventoryMaxRow+j].x = ix;
			invButtons[i, global.characterInventoryMaxRow+j].y = iy;
		}
	}
	
	
}