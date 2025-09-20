String codelandUsernameValidation(String str) {
  // The username is between 4 and 25 characters.
  final hasInvalidLength = str.length < 4 || str.length > 25;

  if (hasInvalidLength) {
    return "false";
  }

  // It must start with a letter.
  final startsWithInvalidChar = RegExp(r'^[^a-zA-Z]').hasMatch(str);

  if (startsWithInvalidChar) {
    return "false";
  }

  // It can only contain letters, digits, and underscores.
  final containsInvalidChars = RegExp(r'[^\w]').hasMatch(str);

  if (containsInvalidChars) {
    return "false";
  }

  // It cannot end with an underscore.
  final endsWithUnderscore = str.endsWith('_');

  if (endsWithUnderscore) {
    return "false";
  }

  return "true";
}
