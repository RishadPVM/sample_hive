import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:hove/db/model/model.dart';

ValueNotifier<List<StudentModel>> studentList = ValueNotifier([]);

Future<void> addstudent(StudentModel value) async {
   final StudentDB= await Hive.openBox<StudentModel>('student_db');
   final _id= await StudentDB.add(value);
  value.id=_id;
   studentList.value.add(value);
   studentList.notifyListeners();
   print(value.toString());
}

Future<void>getAllstudent()async{
   final StudentDB= await Hive.openBox<StudentModel>('student_db');
   studentList.value.clear();
   studentList.value.addAll(StudentDB.values);
   studentList.notifyListeners();
}

Future<void>deleteStudent(int id)async{
  final StudentDB= await Hive.openBox<StudentModel>('student_db');
 await StudentDB.delete(id);
 getAllstudent();
}