/// @description Attack Network Send
var pos_packet = buffer_create(1, buffer_grow, 1);
buffer_write(pos_packet, buffer_string, "iattack");
buffer_write(pos_packet, buffer_string, name);
buffer_write(pos_packet, buffer_u32, 10);
network_write(Network.socket, pos_packet);
