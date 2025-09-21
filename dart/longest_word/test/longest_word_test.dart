import 'package:longest_word/longest_word.dart';
import 'package:test/test.dart';

void main() {
  test('returns longest word ignoring special characters', () {
    expect(longestWord("fun&!! time"), equals("time"));
  });

  test('returns longest word from a simple sentence', () {
    expect(longestWord("I love dogs"), equals("love"));
  });

  test('returns longest word for "hello world"', () {
    expect(longestWord("hello world"), equals("hello"));
  });

  test('returns longest word for "this is some sort of sentence"', () {
    expect(longestWord("this is some sort of sentence"), equals("sentence"));
  });

  test('returns longest word for "longest word!!"', () {
    expect(longestWord("longest word!!"), equals("longest"));
  });

  test('returns longest word for "a beautiful sentence^&!"', () {
    expect(longestWord("a beautiful sentence^&!"), equals("beautiful"));
  });

  test('returns longest word for "oxford press"', () {
    expect(longestWord("oxford press"), equals("oxford"));
  });

  test('returns longest word for "123456789 98765432"', () {
    expect(longestWord("123456789 98765432"), equals("123456789"));
  });

  test('returns longest word for "letter after letter!!"', () {
    expect(longestWord("letter after letter!!"), equals("letter"));
  });

  test('returns longest word for "a b c dee"', () {
    expect(longestWord("a b c dee"), equals("dee"));
  });

  test(
    'returns longest word for "a confusing /:sentence:/[ this is not!!!!!!!~"',
    () {
      expect(
        longestWord("a confusing /:sentence:/[ this is not!!!!!!!~"),
        equals("confusing"),
      );
    },
  );
}
