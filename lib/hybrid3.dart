class Student {
  List<Map<String, String>> people;
  Student(this.people);

  void sortList(String param) {
    return people.sort((a, b) => a[param]!.compareTo(b[param]!));
  }
}