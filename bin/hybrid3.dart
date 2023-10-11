import 'package:hybrid3/hybrid3.dart' as hybrid3;

void main(List<String> arguments) {
  String json = '''
    [
      {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
      {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
      {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
      {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
    ]
    ''';
    List<Map<String, String>> testData = 
    [
      {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
      {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
      {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
      {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
    ];
    Student testStudent = Student(testData);
    testStudent.printStudents();
  
}

class Student {
  List<Map<String, String>> people;

  Student(this.people);
  void printStudents() {
    print(people);
  }
  
}