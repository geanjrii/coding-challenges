import 'package:codeland_username_validation/codeland_username_validation.dart';
import 'package:test/test.dart';

void main() {
  test('Username too short', () {
    expect(codelandUsernameValidation("aa_"), equals("false"));
  });

  test('Valid username with multiple underscores', () {
    expect(codelandUsernameValidation("u__hello_world123"), equals("true"));
  });
}
