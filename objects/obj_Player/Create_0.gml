self.moving = false;
self.target_x = x;
self.target_y = y;
self.name = "";
self.attack = false;
self.facingDirection = "down";
globalvar max_hp, cur_hp, max_mp, cur_mp, level, experience, attackPower, defensePower;

instance_create_depth(0, 0, 9999, obj_GlobalItemList);
show_debug_message("player is created");

global.skillsBar[0].skillId = 0;
global.skillsBar[1].skillId = 1;

strength = 0;
intelligence = 0;
dexterity = 0;
movementSpeed = 0;
attackSpeed = 0;
castSpeed = 0;
manaCostReduction = 0;
healthPerSecond = 0;
manaPerSecond = 0;


attackPower = 10;
defensePower = 0;
