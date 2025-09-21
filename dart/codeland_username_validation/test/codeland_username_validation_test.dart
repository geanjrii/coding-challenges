import 'package:codeland_username_validation/codeland_username_validation.dart';
import 'package:test/test.dart';

void main() {
  test('Username too short', () {
    expect(codelandUsernameValidation("aa_"), equals("false"));
  });

  test('Valid username with multiple underscores', () {
    expect(codelandUsernameValidation("u__hello_world123"), equals("true"));
  });

  test('Valid username: only letters, length 10', () {
    expect(codelandUsernameValidation("aaaaaaaaaa"), equals("true"));
  });

  test('Single underscore', () {
    expect(codelandUsernameValidation("_"), equals("false"));
  });

  test('Starts with underscores', () {
    expect(codelandUsernameValidation("__bbbbbbb"), equals("false"));
  });

  test('Ends with underscore', () {
    expect(codelandUsernameValidation("b3333434_"), equals("false"));
  });

  test('Valid username: letters and digits', () {
    expect(codelandUsernameValidation("usernamehello123"), equals("true"));
  });

  test('Too many underscores, length > 25', () {
    expect(
      codelandUsernameValidation("oooooooooooooooooo________a"),
      equals("false"),
    );
  });

  test('Starts with digit', () {
    expect(codelandUsernameValidation("123abc444"), equals("false"));
  });

  test('Too long, valid chars', () {
    expect(
      codelandUsernameValidation("a______b_________555555555555aaaa"),
      equals("false"),
    );
  });
}
