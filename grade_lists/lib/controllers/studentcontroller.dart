import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:grade_lists/models/students.dart';

class StudentController extends GetxController{
  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Student> _students = sample_data.map(
        (student) => Student(
        id: student['id'],
        name: student['name'],
        subjects: student['subjects'],
        grades: student['grades']),
  ).toList();

  List<Student> get students => this.students;

  @override
  void onInit() {
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }

  @override
  void nextStudent(){
    pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease);
  }
}