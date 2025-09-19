import 'package:longest_word/longest_word.dart';
import 'package:test/test.dart';

void main() {
  test('returns longest word ignoring special characters', () {
    expect(longestWord("fun&!! time"), equals("time"));
  });

  test('returns longest word from a simple sentence', () {
    expect(longestWord("I love dogs"), equals("love"));
  });
}
