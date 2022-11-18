import 'package:flutter/material.dart';
import 'package:grade_lists/controllers/studentcontroller.dart';
import 'package:get/get.dart';
import 'student_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StudentController _studentcontroller = Get.put(StudentController());

    return Stack(

      children: [

        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                  // Block swipe to next qn
                  physics: ScrollPhysics(),
                  controller: _studentcontroller.pageController,
                  itemCount: _studentcontroller.students.length,
                  itemBuilder: (context, index) => StudentCard(
                      student: _studentcontroller.students[index]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}