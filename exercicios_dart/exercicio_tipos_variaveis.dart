void main(List<String> args) {
  // tipos basicos de variaveis
  int a = 3;
  double b = 3.1;
  bool estaChovendo = true;
  bool estaFrio = false;
  var c = "Vc é muito legal"; // variavel de tipo inferida
  print(a);
  print(b);
  print(c);

  // ignore: dead_code
  print(estaChovendo || estaFrio);

  //lista aceita valores repetidos
  var nomes = ["Ana", "Bia", "Carlos"];
  nomes.add("Daniel"); // adciona um elemento na lista
  nomes.add("Daniel"); // adciona um elemento na lista
  print(nomes.length); // imprime o tamanho da lista
  print(nomes.elementAt(0)); // imprime um elemento da lista
  print(nomes[2]); // tbm imprime um elemento pela posicao dele

  //set é um conjunto de dados
  // ignore: equal_elements_in_set
  var conjunto = {0, 1, 2, 3, 4, 4, 4, 5}; // nao aceita elementos repetidos
  print(conjunto.length);
  print(conjunto);
  // ignore: unnecessary_type_check
  print(conjunto is Set);

  // conjuto tipado
  Set<String> conjuntoNomes = {"Ana", "Bia", "Carlos", "Daniel"};
  print(conjuntoNomes.length);

  // Map estruta chave | valor
  Map<String, double> notasDosAlunos = {
    "Ana": 9.7,
    "Bia": 9.2,
    "Carlos": 7.8,
  };

  for (var chave in notasDosAlunos.keys) {
    print("chave = $chave");
  }

  for (var valor in notasDosAlunos.values) {
    print("valor = $valor");
  }

  for (var registro in notasDosAlunos.entries) {
    print("${registro.key} = ${registro.value}");
  }

  //dynamic é um tipo dinamico
  dynamic x = "Teste";
  print(x);
  x = 123;
  print(x);
  x = false;
  print(x);

  //final -- valor nao sera alterado depois de setado
  final d = 3;
  print(d);

  //contantes
  const e = 4; //-- valor nao sera alterado depois de setado
  print(e);
}
