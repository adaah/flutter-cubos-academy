import 'dart:async';
import 'dart:io';
import 'dart:convert';

void caixa(int value) {


  int r5 = 0;
  int n5 = 0;
  
  if (value % 5 == 1 || value % 5 == 3) { 
    value -= 5; 
    r5++; 
  }

  int n100 = value ~/ 100; 
  value %= 100; 
  int n50 = value ~/ 50; 
  value %= 50; 
  int n20 = value ~/ 20; 
  value %= 20; 
  int n10 = value ~/ 10; 
  value %= 10; 

  if (r5 > 0) { 
    n5 = value ~/ 5; 
    n5 += r5; 
  } else { 
    n5 = value ~/ 5; 
  }

  value %= 5; 


  if (value == 3 || value == 1) {
    n5--;
    value += 5;
  }

  int n2 = value ~/ 2; 
  value %= 2; 

  var text = ''; 

  if (n100 > 0) {
    text += '$n100 de 100';
  }

  if (n50 > 0) { 
    if (text == '') { 
      text += '$n50 de 50';
    } else {
      text += ', $n50 de 50';
    }
  }

  if (n20 > 0) { 
    if (text == '') { 
      text += '$n20 de 20';
    } else {
      text += ', $n20 de 20';
    }
  }

  if (n10 > 0) { 
    if (text == '') { 
      text += '$n10 de 10';
    } else {
      text += ', $n10 de 10';
    }
  }

  if (n5 > 0) { 
    if (text == '') { 
      text += '$n5 de 5';
    } else {
      text += ', $n5 de 5';
    }
  }

  if (n2 > 0) { 
    if (text == '') { 
      text += '$n2 de 2';
    } else {
      text += ', $n2 de 2';
    }
  }

  print(text);
}

void main() => readLine().listen(processLine);

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) => caixa(int.parse(line.split(' ').first));