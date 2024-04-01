import 'dart:math';

abstract class Forma {
  double calculaArea();
}

void main() {
  final random = Random();

  try {
    double base = random.nextDouble() * 99;
    double altura = random.nextDouble() * 99;

    print("base $base\n altura = $altura");

    Retangulo retangulo = Retangulo(base, altura);
    print("Area do retângulo: ${retangulo.calculaArea()}");
  } catch (e) {
    print("erro $e");
  }
}

class Retangulo implements Forma {
  Retangulo(this.base, this.altura) {
    if (base <= 0 || altura <= 0) {
      throw Exception(
          "Dimensões inválidas, informe apenas valores positivos maiores que zero");
    }
  }
  double base;
  double altura;

  @override
  double calculaArea() {
    return base * altura;
  }
}
