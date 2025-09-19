import 'package:first_reverse/first_reverse.dart';
import 'package:test/test.dart';

void main() {
  test('should reverse "coderbyte"', () {
    expect(firstReverse("coderbyte"), "etybredoc");
  });

  test('should reverse "I Love Code"', () {
    expect(firstReverse("I Love Code"), "edoC evoL I");
  });

  test('should reverse "Hello World and Coders"', () {
    expect(firstReverse("Hello World and Coders"), "sredoC dna dlroW olleH");
  });
}
