import 'package:calc_imc_dio/exceptions/pessoa_exceptions.dart';

class Pessoa {
  late String _nome;
  late double _peso;
  late double _altura;

  Pessoa(String nome, double peso, double altura) {
    try {
      setNome(nome);
      setPeso(peso);
      setAltura(altura);
    } catch (e) {
      throw PessoaException();
    }
  }

  void setNome(String nome) {
    if (nome.isEmpty) {
      throw NomeNuloException();
    }
    _nome = nome;
  }

  String getNome() => _nome;

  void setPeso(double peso) {
    if (peso <= 0) {
      throw PesoInvalidoException();
    }
    _peso = peso;
  }

  double getPeso() => _peso;

  void setAltura(double altura) {
    if (altura <= 0) {
      throw AlturaInvalidaException();
    }

    _altura = altura;
  }

  double getAltura() => _altura;

  @override
  String toString() {
    return {"Nome": _nome, "Peso": _peso, "Altura": _altura}.toString();
  }
}
