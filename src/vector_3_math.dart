import 'dart:math' as math;

class VectorMath {
  double calculateDistance(Point a, Point b) {
    var diff = b - a;
    var dotProduct = Dot(diff, diff);
    return math.sqrt(dotProduct);
  }

  double calculateAreaOfTrinagle(Point a, Point b, Point c) {
    double res = math.pow(
        ((b.X * a.Y) -
            (c.X * a.Y) -
            (a.X * b.Y) +
            (c.X * b.Y) +
            (a.X * c.Y) -
            (b.X * c.Y)),
        2.0) as double;
    res += math.pow(
        ((b.X * a.Z) -
            (c.X * a.Z) -
            (a.X * b.Z) +
            (c.X * b.Z) +
            (a.X * c.Z) -
            (b.X * c.Z)),
        2.0);
    res += math.pow(
        ((b.Y * a.Z) -
            (c.Y * a.Z) -
            (a.Y * b.Z) +
            (c.Y * b.Z) +
            (a.Y * c.Z) -
            (b.Y * c.Z)),
        2.0);
    return math.sqrt(res) * 0.5;
  }

  double Dot(Point a, Point b) {
    return (a.X * b.X) + (a.Y * b.Y) + (a.Z * b.Z);
  }
}

class Point {
  late double X;
  late double Y;
  late double Z;

  Point(double x, double y, double z) {
    X = x;
    Y = y;
    Z = z;
  }

  factory Point.zero() {
    return new Point(0, 0, 0);
  }

  factory Point.one() {
    return new Point(1, 1, 1);
  }

  factory Point.random() {
    var random = new math.Random();
    return new Point(
        random.nextDouble(), random.nextDouble(), random.nextDouble());
  }

  Point operator -(Point b) {
    X -= b.X;
    Y -= b.Y;
    Z -= b.Z;
    return Point(X, Y, Z);
  }
}
