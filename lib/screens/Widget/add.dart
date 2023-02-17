import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hove/db/function/db.dart';
import 'package:hove/db/model/model.dart';

class Add_data extends StatelessWidget {
  const Add_data ({super.key});

  @override
  Widget build(BuildContext context) {
    final _nameController =TextEditingController();
    final _ageController = TextEditingController();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name'
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller: _ageController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age'
            ),
          ),
        ),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {
        final  age= _ageController.text.trim();
        final name= _nameController.text.trim();
        if(age.isEmpty || name.isEmpty){
         print('no data');
        }else{
         print("$age $name");
         final _student = StudentModel(name: name, age: age);
         addstudent(_student);
        }
        }, child:Text('Add')
        )
      ],
    );
  }
}