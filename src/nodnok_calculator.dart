class NodNokCalculator{
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
}