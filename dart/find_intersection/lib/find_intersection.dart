String findIntersection(List<String> strArr) {
  final Set<String> array1 = strArr[0].split(', ').toSet();
  final Set<String> array2 = strArr[1].split(', ').toSet();
  final Set<String> intersection = array1.intersection(array2);
  return intersection.isEmpty ? 'false' : intersection.join(',');
}
