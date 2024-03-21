// funcao com tipo dynamic sem retorno
soma(a, b) {
  print(a + b);
}

// funcao void tipada
void soma3(int a, int b) {
  print(a + b);
}

//funcao tipada
int soma2(int a, int b) {
  return 2 + b;
}

// funcao com funcao como parametro
int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}

void main(List<String> args) {
  soma(2, 3);
  final int r = soma2(3, 7);
  print("O Valor da some é: $r");
  soma3(4, 2);
  final s = exec(2, 3, (a, b) {
    return a - b;
  });
  print("o resultado é $s !!!!");

  final t = exec(4, 5, (a, b) => a * b + 100);
  print("O resultado é $t !!!!");
}
