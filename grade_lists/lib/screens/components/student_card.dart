import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grade_lists/controllers/studentcontroller.dart';
import 'package:grade_lists/models/students.dart';
import 'package:grade_lists/screens/components/subjects.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({
    Key? key,
    // it means we have to pass this
    required this.student,
  }) : super(key: key);

  final Student student;

  @override
  Widget build(BuildContext context) {
    StudentController _controller = Get.put(StudentController());

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            child: Text(
              student.name
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),
            ...List.generate(
              student.subjects.length,
              (index) => Subject(
              index: index,
              text: student.subjects[index],
            )
          )
        ]
      )
    );
  }
}