void main() {
  String simulacaoArquivo = "bloco.txt";

  try {
    ArquivoTexto arquivo = ArquivoTexto(simulacaoArquivo);
    arquivo.abrir();
  } catch (e) {
    print(e);
  } finally {
    print("fim do programa");
  }
}

abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  ArquivoTexto(this.nome);

  String nome;

  @override
  void abrir() {
    try {
      throw Exception("Erro ao abrir o arquivo $nome");
    } catch (e) {
      print("Exception");
      rethrow;
    }
  }
}
