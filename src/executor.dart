import 'FindNumbersInString.dart';
import 'FindingTheRootOfDegree.dart';
import 'IntegerConverter.dart';
import 'NODNOKCalculator.dart';
import 'NumbersReader.dart';
import 'Vector3Math.dart';
import 'WordsMapper.dart';
import 'Mail.dart';

void main() {
  calculateNodNok();
  convertInteger();
  findNumbersInString();
  wordsMap();
  readNumbers();
  some3DMath();
  findingTheRoot();
  checkMail();
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

void wordsMap() {
  var wordsMapper = new WordsMapper();
  final List<String> words = ["one", "two", "two", "three", "three", "three"];
  var mapperWords = wordsMapper.GetWordsCount(words);
  print("${mapperWords}");
}

void readNumbers() {
  var reader = new NumbersReader();
  final List<String> words = [
    "one",
    "two",
    "two",
    "three",
    "three",
    "three",
    "four",
    "nine",
    "dog",
    "cat"
  ];
  var numbers = reader.ReadNumbersFromString(words);
  print("${numbers}");
}

void some3DMath() {
  var math = new VectorMath();
  var distance = math.CalculateDistance(Point.one(), Point.zero());
  print("${distance}");

  var areaOfTriangle =
      math.CalculateAreaOfTrinagle(Point.one(), Point.zero(), Point.random());
  print("${areaOfTriangle}");
}

void findingTheRoot() {
  var root = 10.FindRoot(5);
  print("${root}");
}

void checkMail() {
  var userManager = new UserManager();
  var user = new GeneralUser("123@gmail.com");
  var admin = new AdminUser("321@cloud.com");

  print("before delete:");
  userManager.postUser(user);
  userManager.postUser(admin);
  userManager.logUsers();

  print("after delete:");
  userManager.deleteUser(user);
  userManager.logUsers();
}
