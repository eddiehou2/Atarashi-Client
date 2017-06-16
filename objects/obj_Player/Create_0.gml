self.moving = false;
self.target_x = x;
self.target_y = y;
self.name = "";
self.attack = false;
self.facingDirection = "down";
globalvar max_hp, cur_hp, max_mp, cur_mp, level, experience;

instance_create_depth(0, 0, 9999, obj_GlobalItemList);
show_debug_message("player is created");