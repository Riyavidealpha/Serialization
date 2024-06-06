import 'package:flutter/material.dart';

//serialization
import 'dart:convert';  //----use in serialization----//

// void main() {
 
//   final person = Person(name: 'Alice', age: 30);
//   final jsonRepresentation = jsonEncode(person.toJson());
//   debugPrint(jsonRepresentation);
// }



// class Person {
//   final String name;
//   final int age;

//   Person({required this.name, required this.age});

//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'age': age,
//     };
//   }
// }

//deserialization

// void main() {
//   final jsonMap = {'name': 'Bob', 'age': 25};
//   final person = Person.fromJson(jsonMap);
//   debugPrint(person.name); // Output: Bob
// }
// class Person {
//   final String name;
//   final int age;

//   Person({required this.name, required this.age});

//   factory Person.fromJson(Map<String, dynamic> json) {
//     return Person(
//       name: json['name'],
//       age: json['age'],
//     );
//   }
// }

// copywith

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  Person copyWith({String? name, int? age}) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}

void main() {
  final person = Person(name: 'Charlie', age: 35);
  final updatedPerson = person.copyWith(name: 'David');
  debugPrint(updatedPerson.name); // Output: David
}
