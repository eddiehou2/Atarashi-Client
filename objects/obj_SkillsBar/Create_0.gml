globalvar showSkillsBar;
showSkillsBar = true;
globalvar maxSkills;
maxSkills = 12;

for (i = 0; i < maxSkills; i += 1) {
	global.skillsBar[i] = instance_create_depth(0, 0, 9999, obj_Skill);
	button[i] = instance_create_depth(0, 0, -1100, obj_SkillsButton);
	button[i].slot = i;
}

globalvar mouseSkill;
mouseSkill = instance_create_depth(0, 0, 9999, obj_Skill);
instance_create_depth(0, 0, -1200, obj_MouseSkill);