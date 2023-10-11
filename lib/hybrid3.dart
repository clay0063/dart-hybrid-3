class Student {
  List<Map<String, String>> people;
  Student(this.people);

  void sortList(String field) {
    //TODO: figure out better null handling
    return people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  void output() {
    people.forEach(print);
  }

  void plus(Map<String, String> person) {
    //TODO: add error checking
    people.add(person);
  }

  void remove(String field) {
    //TODO: remove an item from the List using the removeWhere() list method
  }
}