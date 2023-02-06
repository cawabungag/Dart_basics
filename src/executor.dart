import 'mail.dart';
import 'find_numbers_in_string.dart';
import 'finding_the_root_of_degree.dart';
import 'integer_converter.dart';
import 'nodnok_calculator.dart';
import 'numbers_reader.dart';
import 'vector_3_math.dart';
import 'words_mapper.dart';

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
  var nodNok = new NodNokCalculator();
  int a = 1024;
  int b = 1024;
  var nod = nodNok.nod(a, b);
  var nok = nodNok.nok(a, b);
  print("nod: ${nod} nok: ${nok}");

  var c = 2048;
  var primeFactorsOfC = nodNok.findPrimeFactors(c);
  print("prime factors of ${c}: ${primeFactorsOfC}");
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
  var numbers = findInNumber.findNums(string);
  print("${numbers}");
}

void wordsMap() {
  var wordsMapper = new WordsMapper();
  final List<String> words = ["one", "two", "two", "three", "three", "three"];
  var mapperWords = wordsMapper.getWordsCount(words);
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
  var numbers = reader.readNumbersFromString(words);
  print("${numbers}");
}

void some3DMath() {
  var math = new VectorMath();
  var distance = math.calculateDistance(Point.one(), Point.zero());
  print("${distance}");

  var areaOfTriangle =
      math.calculateAreaOfTrinagle(Point.one(), Point.zero(), Point.random());
  print("${areaOfTriangle}");
}

void findingTheRoot() {
  var root = 34.findRoot(5);
  print("root: ${root}");
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
