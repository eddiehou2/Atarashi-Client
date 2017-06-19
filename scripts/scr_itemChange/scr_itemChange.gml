// scr_itemChange(invCol, invRow, itemId, quantity);

var item_packet = buffer_create(1, buffer_grow, 1);
buffer_write(item_packet, buffer_string, "item");
buffer_write(item_packet, buffer_u32, argument0);
buffer_write(item_packet, buffer_u32, argument1);
buffer_write(item_packet, buffer_u32, argument2);
buffer_write(item_packet, buffer_u32, argument3);
network_write(Network.socket, item_packet);

