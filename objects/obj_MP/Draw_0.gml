var x1, x2, y1, y2;
x1 = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/4;
x2 = x1 + camera_get_view_width(view_camera[0])/2;
y2 = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])-4;
y1 = y2 - 16;

draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(x1-1,y1-1,x2+1,y2,1);
draw_set_alpha(0.8);
draw_set_color(c_blue);
draw_rectangle(x1,y1,x1+(x2-x1)*(global.cur_mp/global.max_mp),y2,0);