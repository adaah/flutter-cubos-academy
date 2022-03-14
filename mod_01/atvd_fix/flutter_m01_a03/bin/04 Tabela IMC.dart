void main() {
  final peso = 42;
  final altura = 1.54;

  final imc = peso / (altura * altura);

  if (imc < 18.5) {
    print('Abaixo do Peso');
  } else if (imc < 25) {
    print('Peso Normal');
  } else if (imc < 30) {
    print('Acima do Peso');
  } else {
    print('Obesidade');
  }
}
