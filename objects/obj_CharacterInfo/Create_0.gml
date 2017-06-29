globalvar characterInventoryMaxCol, characterInventoryMaxRow;
characterInventoryMaxCol = 7;
characterInventoryMaxRow = 5;

globalvar showCharacterInfo;
showCharacterInfo = false;
globalvar invButtons;



globalvar mouseItem;
mouseItem = instance_create_depth(0, 0, 9999, obj_Item);
instance_create_depth(0, 0, -3000, obj_MouseItem);

instance_create_depth(0, 0, -1000, obj_InventoryBar);

globalvar characterInventory;
for (i=0; i<characterInventoryMaxCol; i++) {
	for (j=0; j<characterInventoryMaxRow+2;j++) {
		global.characterInventory[i, j] = instance_create_depth(0, 0, 9999, obj_Item);
		invButtons[i, j] = instance_create_depth(0,0,-2100,obj_InvButton);
		invButtons[i, j].col = i;
		invButtons[i, j].row = j;
		if (j < characterInventoryMaxRow) {
			invButtons[i, j].invType = "CharacterInventory";
		}
		else {
			invButtons[i, j].invType = "InventoryBar";
		}
	}
}

globalvar equipmentName;
equipmentName = ["Head", "Weapon", "Hands", "Legs", "Feet", "Necklace", "Off-Hand", "Body", "Arms", "Special"];
globalvar characterEquipment;
for (i=0; i<array_length_1d(equipmentName); i++) {
	global.characterEquipment[i] = instance_create_depth(0, 0, 9999, obj_Equipment);
	global.characterEquipment[i].equipment = equipmentName[i];
	equipmentButtons[i] = instance_create_depth(0, 0, -2100, obj_EquipmentButton);
	equipmentButtons[i].slot = i;
}



scr_inventoryRetrieveAll();