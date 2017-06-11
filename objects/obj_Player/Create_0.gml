moving = false;
target_x = x;
target_y = y;
name = "";
attack = false;
facingDirection = "down";
globalvar max_hp, cur_hp, max_mp, cur_mp, level, experience;

instance_create_depth(0, 0, 9999, obj_GlobalItemList);
