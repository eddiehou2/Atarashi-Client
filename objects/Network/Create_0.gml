/// Initiate the connection

socket = network_create_socket(network_socket_tcp);
network_connect_raw(socket, "127.0.0.1", 8082);
