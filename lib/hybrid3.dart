class Student {
  List<Map<String, String>> people;
  Student(this.people);

  void sortList(String field) {
    var keyCheck = people.every((person)=>person[field] != null); //checks and sees if the field exists for the items
    if (!keyCheck) { field = "first"; } //if it doesn't exist, default to sorting by first name
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
    return people.removeWhere((person) => person.containsValue(field)); //does not cause errors if something doesnt exist
  }
}