import 'IntegerConverter.dart';
import 'NODNOKCalculator.dart';

void main() {
  calculateNodNok();
  convertInteger();
}

void convertInteger() {
  var integerConverter = new IntegerConverter();
  var input = 1970;
  var binaryInput = integerConverter.decimalToBinary(input);
  var binaryToDecimal = integerConverter.binaryToDecimal(binaryInput);
  if (binaryToDecimal != input) {
    print("something went wrong!");
  } else {
    print("binaryToDecimal: ${binaryToDecimal}");
  }
}

void calculateNodNok() {
  var nodNok = new NODNOKCalculator();
  double a = 1970;
  double b = 1;
  var nod = nodNok.NOD(a, b);
  var nok = nodNok.NOK(a, b);
  print("nod: ${nod} nok: ${nok}");
}
