globalvar showInv;
showInv = true;
globalvar maxItems;
maxItems = 5;

for (i = 0; i < maxItems; i += 1) {
	global.inventory[i] = -1;
	button[i] = instance_create_depth(0, 0, -1100, obj_InvButton);
	button[i].slot = i;
}

globalvar mouseItem;
mouseItem = -1;
instance_create_depth(0, 0, -1200, obj_MouseItem);