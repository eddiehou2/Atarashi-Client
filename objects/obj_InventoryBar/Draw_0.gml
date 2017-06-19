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
	
	for (i = 0; i < 5; i++) {
		var ix = x2 - invBarHeight/2 - (i*40);
		var iy = y1 + invBarHeight/2;
		var equipmentPiece;
		
		draw_sprite_ext(spr_border, 0, ix, iy, 1, 1, 0, c_white, 1);
		switch (i) {
			case 0:
				equipmentPiece = equipment.headButton;
				break;
			case 1:
				equipmentPiece = equipment.bodyButton;
				break;
			case 2:
				equipmentPiece = equipment.handsButton;
				break;
			case 3:
				equipmentPiece = equipment.feetButton;
				break;
			case 4:
				equipmentPiece = equipment.weaponButton;
				break;
		}
		equipmentPiece.x = ix;
		equipmentPiece.y = iy;
	}
}