void main() {
  int numero = 5;
  try {
    funcaoInteiro(numero);
    print("Sucesso");
  } on Exception catch (e) {
    print("erro $e");
  }
}

void funcaoInteiro(int numeroInteiro) {
  if (numeroInteiro.isEven) {
    print("entrada correta você inseriu um numero par: $numeroInteiro");
  } else {
    throw Exception("Entrada inválida, insira um número par");
  }
}
