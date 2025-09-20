String questionsMarks(String str) {
  int previousNum = 0;
  int questionMarks = 0;
  int validPairs = 0;

  for (String char in str.split('')) {
    final isQuestionMark = char == '?';
    final isDigit = RegExp(r'\d').hasMatch(char);

    if (isDigit) {
      int currentNum = int.parse(char);
      final sum = previousNum + currentNum;

      if (sum == 10 && questionMarks == 3) {
        validPairs++;
      }

      if (sum == 10 && questionMarks != 3) {
        return 'false';
      }

      previousNum = currentNum;
      questionMarks = 0;
    } else if (isQuestionMark) {
      questionMarks++;
    }
  }
  return validPairs > 0 ? 'true' : 'false';
}
