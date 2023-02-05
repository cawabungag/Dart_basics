extension FindRootOfNDegree on num {
  num find_root(double root) {
    double eps = 0.000000001;
    double result = this.toDouble();
    double x = this / root;

    while ((result - x).abs() > eps) {
      x = result;
      result = (1 / root) * (((root - 1) * x) + (this / pow(x, root - 1)));
    }
    return result;
  }

  double pow(double baseValue, num N) {
    for (int i = 0; i < N - 1; i++)
      baseValue *= baseValue;
    return baseValue;
  }
}
