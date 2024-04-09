import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'servers.dart';

void main() async {
  var _server = Servers();

  final servidor = await shelf_io.serve(_server.handler, "localhost", 8080);

  print("Nosso servidor foi iniciado http://localhost:8080");
}
