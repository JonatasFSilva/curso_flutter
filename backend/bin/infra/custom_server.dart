import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class CustomServer {
  Future<void> initialize({
    required Handler handrler,
    required String address,
    required int port,
  }) async {
    await shelf_io.serve(handrler, address, port);
    print("Servidor Inicializado http://$address:$port");
  }
}
