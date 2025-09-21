import 'package:first_reverse/first_reverse.dart';
import 'package:test/test.dart';

void main() {
  test('should reverse "coderbyte"', () {
    expect(firstReverse("coderbyte"), "etybredoc");
  });

  test('should reverse "Coderbyte"', () {
    expect(firstReverse("Coderbyte"), "etybredoC");
  });

  test('should reverse "I Love Coding"', () {
    expect(firstReverse("I Love Coding"), "gnidoC evoL I");
  });

  test('should reverse "h333llLo"', () {
    expect(firstReverse("h333llLo"), "oLll333h");
  });

  test('should reverse "Yo0"', () {
    expect(firstReverse("Yo0"), "0oY");
  });

  test('should reverse "thisiscool"', () {
    expect(firstReverse("thisiscool"), "loocsisiht");
  });

  test('should reverse "commacomma!"', () {
    expect(firstReverse("commacomma!"), "!ammocammoc");
  });

  test('should reverse "123456789"', () {
    expect(firstReverse("123456789"), "987654321");
  });

  test('should reverse "lettersz!23z"', () {
    expect(firstReverse("lettersz!23z"), "z32!zsrettel");
  });

  test('should reverse "aq"', () {
    expect(firstReverse("aq"), "qa");
  });

  test('should reverse "Hello World and Coders"', () {
    expect(firstReverse("Hello World and Coders"), "sredoC dna dlroW olleH");
  });
}
