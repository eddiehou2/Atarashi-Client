for (i = 0; i < maxItems; i += 1) {
	if (global.inventory[i] == -1) {
		global.inventory[i] = argument0;
		return(true);
	}
}
return(false);