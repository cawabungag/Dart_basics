class IntegerConverter {
  String decimalToBinary(int number) {
    return number.toRadixString(2);
  }

  int binaryToDecimal(String binary) {
    return int.parse(binary, radix: 2);
  }
}
