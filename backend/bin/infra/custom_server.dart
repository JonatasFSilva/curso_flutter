import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class CustomServer {
  Future<void> initialize(Handler handrler) async {
    String address = "localhost";
    int port = 8080;

    await shelf_io.serve(handrler, address, port);
    print("Servidor Inicializado http://$address:$port");
  }
}
