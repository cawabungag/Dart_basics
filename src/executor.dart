import 'FindNumbersInString.dart';
import 'IntegerConverter.dart';
import 'NODNOKCalculator.dart';
import 'NumbersReader.dart';
import 'WordsMapper.dart';

void main() {
  calculateNodNok();
  convertInteger();
  findNumbersInString();
  wordsMap();
  readNumbers();
}

void calculateNodNok() {
  var nodNok = new NODNOKCalculator();
  double a = 1970;
  double b = 1;
  var nod = nodNok.NOD(a, b);
  var nok = nodNok.NOK(a, b);
  print("nod: ${nod} nok: ${nok}");
}

void convertInteger() {
  var integerConverter = new IntegerConverter();
  var input = 1970;
  var binaryInput = integerConverter.decimalToBinary(input);
  var binaryToDecimal = integerConverter.binaryToDecimal(binaryInput);
  print("binaryToDecimal: ${binaryToDecimal}");
}

void findNumbersInString() {
  var string = "0 1 2 3 4 5 6 7 8 9";
  var findInNumber = new FindNumbersInString();
  var numbers = findInNumber.FindNums(string);
  print("${numbers}");
}

void wordsMap(){
  var wordsMapper = new WordsMapper();
  final List<String> words = ["one", "two", "two", "three", "three", "three"];
  var mapperWords = wordsMapper.GetWordsCount(words);
  print("${mapperWords}");
}


void readNumbers() {
  var reader = new NumbersReader();
  final List<String> words = ["one", "two", "two", "three", "three", "three", "four", "nine", "dog", "cat"];
  var numbers = reader.ReadNumbersFromString(words);
  print("${numbers}");
}
