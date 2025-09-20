import 'package:questions_marks/questions_marks.dart';
import 'package:test/test.dart';

void main() {
  group('QuestionsMarks', () {
    test(
      'Returns "true" when there are exactly 3 question marks between numbers that sum to 10',
      () {
        expect(questionsMarks("arrb6???4xxbl5???eee5"), equals('true'));
      },
    );

    test(
      'Returns "false" when there are not exactly 3 question marks between numbers that sum to 10',
      () {
        expect(questionsMarks("aa6?9"), equals('false'));
      },
    );

    test(
      'Returns "true" for multiple valid pairs with exactly 3 question marks',
      () {
        expect(questionsMarks("acc?7??sss?3rr1??????5"), equals('true'));
      },
    );

    test(
      'Returns "false" when there are no pairs of numbers that sum to 10',
      () {
        expect(questionsMarks("aaaaaaarrrrr??????"), equals('false'));
      },
    );

    test(
      'Returns "true" for repeated valid pairs with exactly 3 question marks',
      () {
        expect(questionsMarks("9???1???9???1???9"), equals('true'));
      },
    );

    test(
      'Returns "false" when at least one pair does not have exactly 3 question marks',
      () {
        expect(questionsMarks("9???1???9??1???9"), equals('false'));
      },
    );

    test(
      'Returns "false" when there are not enough question marks between numbers',
      () {
        expect(questionsMarks("4?5?4?aamm9"), equals('false'));
      },
    );

    test(
      'Returns "false" when there are too few question marks between numbers',
      () {
        expect(questionsMarks("5??aaaaaaaaaaaaaaaaaaa?5?5"), equals('false'));
      },
    );

    test(
      'Returns "true" when there is at least one valid pair with exactly 3 question marks',
      () {
        expect(questionsMarks("5??aaaaaaaaaaaaaaaaaaa?5?a??5"), equals('true'));
      },
    );

    test(
      'Returns "false" when there are no valid pairs with exactly 3 question marks',
      () {
        expect(
          questionsMarks("mbbv???????????4??????ddsdsdcc9?"),
          equals('false'),
        );
      },
    );
  });
}
