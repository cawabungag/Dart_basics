class WordsMapper {
  Map<String, int> getWordsCount(List<String> words) {
    final Map<String, int> result = new Map<String, int>();
    for (int i = 0; i < words.length; i++) {
      var word = words[i];
      if (result.containsKey(word)) {
        result.update(word, (value) => value + 1);
      } else {
        result.addAll({word: 1});
      }
    }
    return result;
  }
}
