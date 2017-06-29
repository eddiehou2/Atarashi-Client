if (showCharacterInfo) {
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_self();
	draw_sprite(spr_gui_inventory_background, 0, x-210, y+60);
	draw_sprite(spr_gui_character_info_background, 0, x+185, y+60);
	draw_sprite(spr_Hero_Down, 0, x+185, y+50);
	for (i=0; i<characterInventoryMaxCol; i++) {
		for (j=0; j<characterInventoryMaxRow;j++) {
			var ix = x-360+(50*i);
			var iy = y-40+(50*j);
			draw_sprite(spr_border, 0, ix, iy);
			invButtons[i, j].x = ix;
			invButtons[i, j].y = iy;
		}
	}
	
	
	for (i=0; i<2; i++) {
		for (j=0; j<5; j++) {
			var ix = x+10+(350*i);
			var iy = y-40+(50*j);
			draw_sprite(spr_border, 0, ix, iy);
			equipmentButtons[i*5+j].x = ix;
			equipmentButtons[i*5+j].y = iy;
			var textix = x+60+(240*i);
			var textiy = y-40+(50*j);
			draw_text(textix, textiy, equipmentName[i*5+j]);
		}
	}
	
	draw_text(x+140,y+110,"Attack: " + string(global.attackPower));
	draw_text(x+140,y+125,"Defense: " + string(global.defensePower));
	draw_text(x+140,y+140,"Health: " + string(global.max_hp));
	draw_text(x+140,y+155,"Mana: " + string(global.max_mp));
}

