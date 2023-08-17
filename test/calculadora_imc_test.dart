import 'package:calc_imc_dio/classes/calculadora_imc.dart';
import 'package:calc_imc_dio/classes/pessoa.dart';
import 'package:calc_imc_dio/enums/classificacao_imc_enum.dart';
import 'package:test/test.dart';

void main() {
  late CalculadoraIMC calculadoraIMC;
  setUp(() {
    calculadoraIMC = CalculadoraIMC();
  });
  test('Deve Retornar Magreza Grave', () {
    const expected = ValorIMC.magrezaGrave;
    final pessoa = Pessoa("Ana", 45, 2.0);

    final result = calculadoraIMC.calculaIMC(pessoa);

    expect(result, expected);
  });
  test('Deve Retornar Magreza Moderada', () {
    const expected = ValorIMC.magrezaModerada;
    final pessoa = Pessoa("Bia", 64, 2.0);

    final result = calculadoraIMC.calculaIMC(pessoa);

    expect(result, expected);
  });
  test('Deve Retornar Magreza Leve', () {
    const expected = ValorIMC.magrezaLeve;
    final pessoa = Pessoa("Carla", 71, 2.0);

    final result = calculadoraIMC.calculaIMC(pessoa);

    expect(result, expected);
  });
  test('Deve Retornar Saudavel', () {
    const expected = ValorIMC.saudavel;
    final pessoa = Pessoa("Didi", 95, 2.0);

    final result = calculadoraIMC.calculaIMC(pessoa);

    expect(result, expected);
  });
  test('Deve Retornar Sobrepeso', () {
    const expected = ValorIMC.sobrepeso;
    final pessoa = Pessoa("Eli", 110, 2.0);

    final result = calculadoraIMC.calculaIMC(pessoa);

    expect(result, expected);
  });
  test('Deve Retornar Obesidade Grau 1', () {
    const expected = ValorIMC.obesidadeGrau1;
    final pessoa = Pessoa("Fefe", 134, 2.0);

    final result = calculadoraIMC.calculaIMC(pessoa);

    expect(result, expected);
  });
  test('Deve Retornar Obesidade Grau 2', () {
    const expected = ValorIMC.obesidadeGrau2;
    final pessoa = Pessoa("Gel", 156, 2.0);

    final result = calculadoraIMC.calculaIMC(pessoa);

    expect(result, expected);
  });
  test('Deve Retornar Obesidade Grau 3', () {
    const expected = ValorIMC.obesidadeGrau3;
    final pessoa = Pessoa("Ste", 190, 2.0);

    final result = calculadoraIMC.calculaIMC(pessoa);

    expect(result, expected);
  });
}
