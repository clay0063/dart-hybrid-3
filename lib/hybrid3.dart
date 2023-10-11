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
    if (person.containsKey("first") && person.containsKey("last") && person.containsKey("email")) {
      return people.add(person);
    } else {
      print("New information requires First name, Last name, and Email");
    }
  }

  void remove(String field) {
    //TODO: add error checking
    return people.removeWhere((person) => person.containsValue(field));
  }
}