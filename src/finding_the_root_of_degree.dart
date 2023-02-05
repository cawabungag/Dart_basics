extension FindRootOfNDdegree on num {
  num findRoot(num root) {
    var eps = 0.00001;
    var num = this;

    while (root - num / root > eps) {
      root = 0.5 * (root + num / root);
    }

    return root.toInt();
  }
}
