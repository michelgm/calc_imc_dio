import 'package:calc_imc_dio/classes/calculadora_imc.dart';
import 'package:calc_imc_dio/classes/pessoa.dart';
import 'package:calc_imc_dio/utils/helper_utils.dart';

void main(List<String> arguments) {
  CalculadoraIMC calculadoraIMC = CalculadoraIMC();

  final nomePessoa =
      HelperUtils.leEntradaNomeValido("Digite o seu nome: ", "Nome inválido");
  final pesoPessoa = HelperUtils.leEntradaDouble(
      "Digite o seu peso em Quilos: ",
      "O peso precisa ser maior "
          "ou igual a 1",
      valorMinimo: 1);
  final alturaPessoa = HelperUtils.leEntradaDouble(
      "Digite a sua altura em metros: ",
      "A sua altura precisa ser maior ou igual a 0.1",
      valorMinimo: 0.1);
  var pessoa = Pessoa(nomePessoa, pesoPessoa, alturaPessoa);
  print(pessoa);
  print(calculadoraIMC.calculaIMC(pessoa).value);
}
