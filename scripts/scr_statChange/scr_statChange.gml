// src_statChange(statName, newStatAmount);

// Network send update player stats
var stat_packet = buffer_create(1, buffer_grow, 1);
buffer_write(stat_packet, buffer_string, "stat");
buffer_write(stat_packet, buffer_string, argument0);
buffer_write(stat_packet, buffer_u32, argument1);
network_write(Network.socket, stat_packet);
