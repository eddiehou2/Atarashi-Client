// scr_equipmentChange(itemId, slot);

var item_packet = buffer_create(1, buffer_grow, 1);
buffer_write(item_packet, buffer_string, "equipment_change");
buffer_write(item_packet, buffer_u32, argument0);
buffer_write(item_packet, buffer_u32, argument1);
network_write(Network.socket, item_packet);

