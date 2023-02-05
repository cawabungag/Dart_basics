class NodNokCalculator {
  double nod(double a, double b) {
    if (b < 0) b = -b;
    if (a < 0) a = -a;
    while (b > 0) {
      double temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }

  double nok(double a, double b) {
    return ((a * b) / nod(a, b)).abs();
  }

  List<int> findPrimeFactors(int number) {
    if (number < 2) return [];
    int factor = 2;
    List<int> lstFactors = [];
    while (number / factor != 1) {
      if (number % factor == 0) {
        lstFactors.add(factor);
        number = number ~/ factor;
        factor = 2;
      } else {
        factor++;
      }
    }
    lstFactors.add(factor);
    return lstFactors;
  }
}
