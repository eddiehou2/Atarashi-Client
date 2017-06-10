/// @description Position change

// Network send update player position
var pos_packet = buffer_create(1, buffer_grow, 1);
buffer_write(pos_packet, buffer_string, "pos");
buffer_write(pos_packet, buffer_u32, target_x);
buffer_write(pos_packet, buffer_u32, target_y);
network_write(Network.socket, pos_packet);