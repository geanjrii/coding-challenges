String firstReverse(String str) {
  return str.split('').reversed.join('');
}

String firstReverse2(String str) {
  var buffer = StringBuffer();
  for (var i = str.length - 1; i >= 0; i--) {
    buffer.write(str[i]);
  }
  return buffer.toString();
}

String firstReverse3(String str) {
  String reversed = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}
