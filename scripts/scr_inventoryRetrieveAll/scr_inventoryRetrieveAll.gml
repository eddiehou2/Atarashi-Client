// scr_inventoryRetrieveAll();

var item_packet = buffer_create(1, buffer_grow, 1);
buffer_write(item_packet, buffer_string, "inventory");
network_write(Network.socket, item_packet);

var equipment_packet = buffer_create(1, buffer_grow, 1);
buffer_write(equipment_packet, buffer_string, "equipment_retrieval");
network_write(Network.socket, equipment_packet);