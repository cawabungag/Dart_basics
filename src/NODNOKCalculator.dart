class NODNOKCalculator{
  double NOD(double a, double b) {
    if (b < 0) b = -b;
    if (a < 0) a = -a;
    while (b > 0) {
      double temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }

  double NOK(double a, double b) {
    return ((a * b) / NOD(a, b)).abs();
  }
}