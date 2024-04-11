// ignore_for_file: unused_local_variable

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class BlogApi {
  Handler get handler {
    Router router = Router();

    //listagem
    router.get("/blog/noticias", (Request req) {
      return Response.ok("Noticias do Blog.... bla bla bla...");
    });

    //nova notica
    router.post("/blog/noticias", (Request req) {
      return Response.ok("Nova noticia no Blog.... bla bla bla...");
    });

    //notica atualizada pelo id  /blog/noticias?id=1
    router.put("/blog/noticias", (Request req) {
      String? id = req.url.queryParameters["id"];
      return Response.ok("Noticia atualizada no Blog.... bla bla bla...");
    });

    //notica deletada pelo id  /blog/noticias?id=1
    router.delete("/blog/noticias", (Request req) {
      String? id = req.url.queryParameters["id"];
      return Response.ok("Noticia deletada no Blog.... bla bla bla...");
    });

    return router.call;
  }
}
