draw_self();
if (hostile) {
	var x1 = x-12;
	var x2 = x+12;
	var y1 = y-39;
	var y2 = y-34;
	draw_set_alpha(1);
	draw_set_color(c_red);
	draw_text(x - string_width(name)/2, y - 40, name);
	draw_set_color(c_black);
	draw_rectangle(x1,y1,x2,y2,1);
	draw_set_alpha(0.8);
	draw_set_color(c_red);
	draw_rectangle(x1,y1,x1+(x2-x1)*(self.cur_hp/self.max_hp),y2,0);
	draw_set_alpha(1);
	show_debug_message("CURHP: " + string(self.cur_hp) + "/" + string(self.max_hp));
}
else {
	draw_set_color(c_gray);
	draw_set_alpha(1);
	draw_text(x - string_width(name)/2, y - 34, name);
}