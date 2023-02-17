import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hove/db/function/db.dart';
import 'package:hove/db/model/model.dart';

class list_data extends StatelessWidget {
  const list_data({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
     valueListenable: studentList,
     builder:(BuildContext context, List<StudentModel> studentList, Widget? child){
      return ListView.builder(
        itemBuilder:(context, index) {
          final data =studentList[index];
          return ListTile(
            title: Text(data.name),
            subtitle:  Text(data.age),
            trailing: IconButton(onPressed: (){
              if(data.id != null){
                  deleteStudent(data.id!);
              }else{
                print('Student id is null');
              }
            } , icon:Icon(Icons.delete,color: Colors.red,)),
          );
        },
        itemCount: studentList.length,
        );
     } ,
      
    );
  }
}