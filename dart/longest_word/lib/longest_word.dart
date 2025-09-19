String longestWord(String sen) {
  final nonAlphaNumeric = RegExp(r'[^a-zA-Z0-9 ]');

  final cleanedSen = sen.replaceAll(nonAlphaNumeric, '');

  final words = cleanedSen.split(' ');

  final longestWord = words.reduce((longest, current) {
    return current.length > longest.length ? current : longest;
  });

  return longestWord;
}
