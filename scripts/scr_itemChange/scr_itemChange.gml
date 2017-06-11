// scr_itemChange(operation, invType, itemName, quantity);

var item_packet = buffer_create(1, buffer_grow, 1);
buffer_write(item_packet, buffer_string, "item");
buffer_write(item_packet, buffer_string, argument0);
buffer_write(item_packet, buffer_string, argument1);
buffer_write(item_packet, buffer_string, argument2);
buffer_write(item_packet, buffer_u32, argument3);
network_write(Network.socket, item_packet);

