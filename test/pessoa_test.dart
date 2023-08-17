import 'package:calc_imc_dio/classes/pessoa.dart';
import 'package:calc_imc_dio/exceptions/pessoa_exceptions.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Deveria Criar Pessoa com Sucesso', () {
    const expectedNome = "Rodolfo";
    const expectedPeso = 72.0;
    const expectedAltura = 1.72;
    //Act
    final pessoa = Pessoa(expectedNome, expectedPeso, expectedAltura);

    expect(pessoa.getNome(), expectedNome);
    expect(pessoa.getPeso(), expectedPeso);
    expect(pessoa.getAltura(), expectedAltura);
  });
  test('Deve Retornar Exceção PessoaExpection', () {
    const expectedException = TypeMatcher<PessoaException>();

    expect(() => Pessoa("", 0.0, 0.0), throwsA(expectedException));
  });

  test('Deve inserir novo nome', () {
    const expectedNewNome = "Rafael";
    final pessoa = Pessoa("Paulo", 70, 1.7);

    pessoa.setNome(expectedNewNome);

    expect(pessoa.getNome(), expectedNewNome);
  });

  test('Deve Retornar NomeVazioException', () {
    const newNome = "";
    const expectedException = TypeMatcher<NomeNuloException>();
    final pessoa = Pessoa("Paulo", 70, 1.7);

    expect(() => pessoa.setNome(newNome), throwsA(expectedException));
  });
}
