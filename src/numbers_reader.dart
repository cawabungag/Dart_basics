class NumbersReader {
  final Map<String, int> intLibrary = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9
  };

  List<int> readNumbersFromString(List<String> words) {
    final List<int> buffer = <int>[];
    for (var i = 0; i < words.length; i++) {
      var word = words[i];
      if (intLibrary.containsKey(word)) {
        var num = intLibrary[word];
        if (buffer.contains(num)) {
          continue;
        } else {
          buffer.add(num!);
        }
      }
    }

    return buffer;
  }
}
