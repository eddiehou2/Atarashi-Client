globalvar showInv;
showInv = true;
globalvar maxItems;
maxItems = 5;

for (i = 0; i < maxItems; i += 1) {
	global.inventory[i] = instance_create_depth(0, 0, 9999, obj_Item);
	button[i] = instance_create_depth(0, 0, -1100, obj_InvButton);
	button[i].slot = i;
}

globalvar mouseItem;
mouseItem = instance_create_depth(0, 0, 9999, obj_Item);
instance_create_depth(0, 0, -1200, obj_MouseItem);