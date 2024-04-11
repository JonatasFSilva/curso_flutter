import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class Servers {
  Handler get handler {
    final router = Router();

    router.get("/", (Request req) {
      return Response(200, body: "Primeira Rota");
    });

    //http://localhost:8080/ola/mundo
    //ola mundo
    //path param
    router.get("/ola/mundo/<usuario>", (Request req, String usuario) {
      return Response.ok("Ola Mundo $usuario");
    });

    // querys param
    //http://localhost:8080/query?nome=teste
    //http://localhost:8080/query?nome=teste&idade=111
    router.get("/query", (Request req) {
      String? nome = req.url.queryParameters["nome"];
      String? idade = req.url.queryParameters["idade"];
      return Response.ok("Query eh: $nome minha idade eh: $idade");
    });

    router.post("/login", () {
//se usuario == adim e senha == 123
      return Response.ok("Bem Vindo");
      // senao lanca uma exception
    });

    return router.call;
  }
}
