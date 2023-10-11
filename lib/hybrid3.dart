class Student {
  List<Map<String, String>> people;
  Student(this.people);

  void sortList(String field) {
    //TODO: figure out better null handling
    return people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  void output() {
    return people.forEach(print);
  }

  void plus(Map<String, String> person) {
    //TODO: add error checking
    return people.add(person);
  }

  void remove(String field) {
    //TODO: add error checking
    return people.removeWhere((person) => person.containsValue(field));
  }
}