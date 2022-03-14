void main() {
  final a = 5;
  final b = 12;
  final c = 13;

  final equilatero = a == b && a == c && b == c;
  final isosceles = a == b || a == c || b == c;
  final escaleno = a != b && a != c && b != c;
  if (a < b + c && b < a + c && c < b + a) {
    print('É um triângulo');
      if (equilatero) {
        print('Equilátero');
        } else if (isosceles) {
        print('Isósceles');
        } else if (escaleno) {
        print('Escaleno');
      }
  } else {
    print('Não é possível formar um triângulo');
  }
}
