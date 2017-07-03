// scr_getItemInfo(itemId)
var itemInfo_packet = buffer_create(1, buffer_grow, 1);
buffer_write(itemInfo_packet, buffer_string, "itemInfo");
buffer_write(itemInfo_packet, buffer_u32, argument0);
network_write(Network.socket, itemInfo_packet);