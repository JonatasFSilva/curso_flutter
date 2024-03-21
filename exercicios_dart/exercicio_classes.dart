// Classe sem construtor
class Produto {
  String nome = "";
  double preco = 0;
}

// Classe com construtor
class Produto2 {
  String nome = "";
  double preco = 0;

  Produto2(String nome, double preco) {
    this.nome = nome;
    this.preco = preco;
  }
}

// Classe com construtor otimizado
class Produto3 {
  String nome = "";
  double preco = 0;

  // construtor com paramentros posicionais --- tem que seguir a ordem pra colocar certo
  Produto3(this.nome, this.preco);
}

// Classe com construtor otimizado
class Produto4 {
  String nome = "";
  double preco = 0;

  // construtor com paramentros nomeados --- seguirar o nome que for nomeada na hora de usar
  Produto4({this.nome = "", this.preco = 0});
}

// metodo com parametros nomeados
imprimirProduto({String nome = "", double preco = 0}) {
  print("O Produto ${nome} tem o preço R\$${preco}");
}

void main(List<String> args) {
  var p1 = Produto(); // nao precisa do new pra criar uma instancia
  p1.nome = "Lapis";
  p1.preco = 4.59;
  print("O produto ${p1.nome} tem o preço R\$${p1.preco}");

  var p2 = Produto2("Caneta", 5.30);
  print("O produto ${p2.nome} tem o preço R\$${p2.preco}");

  var p3 = Produto3("Geladeira", 1454.99);
  print("O produto ${p3.nome} tem o preço R\$${p3.preco}");

  var p4 = Produto4(nome: "Borracha", preco: 1.50);
  print("O produto ${p4.nome} tem o preço R\$${p4.preco}");

  var p5 = Produto4(nome: "Caderno", preco: 10.99);

  imprimirProduto(nome: p5.nome, preco: p5.preco);
  imprimirProduto(nome: "Mochila", preco: 70.50);
}
