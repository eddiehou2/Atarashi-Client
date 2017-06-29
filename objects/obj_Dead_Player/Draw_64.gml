/// @description Death Menu
draw_set_alpha(0.4);
draw_set_color(c_gray);
draw_rectangle(0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), 0);

draw_set_alpha(1);
draw_set_color(c_purple);
draw_rectangle(view_wport[0]/4 - 10, view_hport[0]/4 - 10, view_wport[0]*3/4 + 10, view_hport[0]*3/4 + 10, 0);

draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(view_wport[0]/4, view_hport[0]/4, view_wport[0]*3/4, view_hport[0]*3/4, 0);

draw_set_alpha(0.8);
draw_set_color(c_dkgray);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext(view_wport[0]/2, view_hport[0]/2, "You have died. Please choose your fate", 20, view_wport[0]/2 - 40);


