import 'package:hybrid3/hybrid3.dart' as hybrid3;
import 'dart:convert' as convert;

void main(List<String> arguments) {
  const json = '''
    [
      {"first":"John", "last":"Smith", "email":"smithjohn@college.edu"},
      {"first":"Jane", "last":"Doe", "email":"doejane@college.edu"}
    ]
    ''';
  var jsonList = convert.jsonDecode(json) as List<dynamic>;
  var studentList = List<Map<String, String>>.from(jsonList.map((dynamic item){
    return Map<String, String>.from(item);
  }));
  
  var testStudent = hybrid3.Student(studentList);
  testStudent.printStudents();
  
}

