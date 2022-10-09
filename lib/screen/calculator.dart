class Calculator {
  double add(double a, double b) => a + b;
  double substract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double division(double a, double b) {
    if (b == 0) throw ArgumentError('Divisible by 0');
    return a / b;
  }

  Future<double> powerOfTwo(double a) =>
      Future.delayed(const Duration(seconds: 2), () => a * a);
}
