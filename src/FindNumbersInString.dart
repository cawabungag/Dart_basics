class FindNumbersInString {
  List<num> FindNums(String string) {
    final List<num> numsBuffer = [];
    List<String> numsList = string.split(" ");
    for (int i = 0; i < numsList.length; i++) {
      var parseInt = int.parse(numsList[i]);
      numsBuffer.add(parseInt);
    }
    return numsBuffer;
  }
}
