import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grade_lists/controllers/studentcontroller.dart';
import 'package:grade_lists/screens/components/body.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    StudentController _controller = Get.put(StudentController());
    return Scaffold(
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Color.fromRGBO(105, 72, 115, 1),
        elevation: 0,
        actions: [
          Padding(padding: EdgeInsets.all(10.0),
              child:
              FloatingActionButton(
                  onPressed: _controller.nextStudent
              )
          ),
        ],
      ),
      body: Body(),
    );
  }
}


