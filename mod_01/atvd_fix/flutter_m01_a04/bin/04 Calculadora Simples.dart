import 'dart:io';

void main() {

  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');


  final number1 = double.parse(inputs[0]);
  final operator = inputs[1];
  final number2 = double.parse(inputs[2]);

  dynamic result = '';
  switch (operator) {
    case '+':
      result = number1 + number2;
      break;

    case '-':
      result = number1 - number2;
      break;

    case '*':
      result = number1 * number2;
      break;

    case '/':
      result = number1 / number2;
      break;
  }

  final resultadoInteiro = result ~/ 1;
  final restoResultado = result % 1;
  final aproxResultado = result.toStringAsFixed(5);

  if (restoResultado > 0) {
    print(double.parse(aproxResultado));
  } else {
    print(resultadoInteiro);
  }
}
