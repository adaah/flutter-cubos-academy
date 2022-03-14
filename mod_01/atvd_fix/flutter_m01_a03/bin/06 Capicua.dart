void main() {
  int num = 10201;

  final primeirodigito = num ~/ 10000;
  num %= 10000;
  final segundodigito = num ~/ 1000;
  num %= 1000;
  final terceirodigito = num ~/ 100;
  num %= 100;
  final quartodigito = num ~/ 10;
  final quintodigito = num %= 10;

  print(
      '$primeirodigito$segundodigito$terceirodigito$quartodigito$quintodigito');

  if (primeirodigito == quintodigito && segundodigito == quartodigito) {
    print('Capicua');
  } else {
    print('Não é capicua');
  }
}
