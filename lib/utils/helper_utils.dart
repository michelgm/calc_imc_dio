import 'dart:convert';
import 'dart:io';

class HelperUtils {
  static double leEntradaDouble(String mensagem, String mensagemEntradaInvalida,
      {double? valorMinimo, double? valorMaximo}) {
    late double? valor;
    do {
      print(mensagem);
      var input = stdin.readLineSync(encoding: utf8);
      valor = double.tryParse(input ?? "");
      if (valor == null ||
          (valorMinimo != null && valor < valorMinimo) ||
          (valorMaximo != null && valor > valorMaximo)) {
        valor = null;
        print(mensagemEntradaInvalida);
      }
    } while (valor == null);
    return valor;
  }

  static String leEntradaNomeValido(
      String mensagem, String mensagemEntradaInvalida) {
    String? valor;
    do {
      print(mensagem);
      valor = stdin.readLineSync(encoding: utf8);
      if (valor == null) {
        valor = null;
        print(mensagemEntradaInvalida);
      }
    } while (valor == null);
    return valor;
  }
}
