import 'package:hybrid3/hybrid3.dart' as hybrid3;
import 'dart:convert' as convert;

void main(List<String> arguments) {
  String json = '''
    [
      {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
      {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
      {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
      {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
    ]
    ''';

  //convert to list of Map<String String>
  var jsonList = convert.jsonDecode(json) as List<dynamic>; //can't decode directly to List<Map...>
  var studentList = List<Map<String, String>>.from(jsonList.map((dynamic item){
    return Map<String, String>.from(item); //return a Map String String for each dynamic item in the json list
  }));
  
  var testStudent = hybrid3.Student(studentList);

  testStudent.output(); //output before changes

  Map<String, String> newPerson = {
    "first":"Miku",
    "last":"Hatsune",
    "email":"hatsu@algonquinlive.com"
  };
  testStudent.plus(newPerson);
  //testStudent.remove();

  testStudent.sortList("first");
  testStudent.output(); //output after changes
}

