import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hove/db/function/db.dart';
import 'package:hove/screens/Widget/add.dart';
import 'package:hove/screens/Widget/list.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    getAllstudent();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             Add_data(),
            const  Expanded(
                child: list_data()
              )
          ],
        ),
      ), 
    );
  }
}