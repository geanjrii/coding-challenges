import 'package:find_intersection/find_intersection.dart';
import 'package:test/test.dart';

void main() {
  test('find intersection 1', () {
    expect(
      findIntersection(["1, 3, 4, 7, 13", "1, 2, 4, 13, 15"]),
      equals("1,4,13"),
    );
  });

  test('find intersection 2', () {
    expect(
      findIntersection(["2, 5, 7, 10, 11, 12", "2, 7, 8, 9, 10, 11, 15"]),
      equals("2,7,10,11"),
    );
  });

  test('find intersection 3', () {
    expect(
      findIntersection(["1, 5, 6, 7, 10, 11, 12", "5, 6, 8, 11, 17"]),
      equals("5,6,11"),
    );
  });

  test('find intersection 4', () {
    expect(findIntersection(["2, 3, 4", "3"]), equals("3"));
  });

  test('find intersection 5', () {
    expect(
      findIntersection(["1, 2, 3, 4, 5", "6, 7, 8, 9, 10"]),
      equals("false"),
    );
  });

  test('find intersection 6', () {
    expect(
      findIntersection(["1, 2, 4, 5, 6, 9", "2, 3, 4, 8, 10"]),
      equals("2,4"),
    );
  });

  test('find intersection 7', () {
    expect(
      findIntersection(["5, 6, 9, 11, 12, 16", "4, 6, 7, 11, 16"]),
      equals("6,11,16"),
    );
  });

  test('find intersection 8', () {
    expect(
      findIntersection(["1, 3, 9, 10, 17, 18", "1, 4, 9, 10"]),
      equals("1,9,10"),
    );
  });

  test('find intersection 9', () {
    expect(
      findIntersection(["11, 12, 14, 16, 20", "11, 12, 13, 18, 21"]),
      equals("11,12"),
    );
  });

  test('find intersection 10', () {
    expect(
      findIntersection(["21, 22, 23, 25, 27, 28", "21, 24, 25, 29"]),
      equals("21,25"),
    );
  });
}
