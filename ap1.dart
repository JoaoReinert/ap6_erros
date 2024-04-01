void main() {

  dynamic string = "ABCD";

  funcao(string);
}

void funcao(String valor) {
  try {
    int inteiro = int.parse(valor);
    print("numero digitado é $valor");
  } catch (e) {
    print("entrada inválida, insira apenas numeros inteiros");
  }
}
