import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/teacher_schedule_time_controller.dart';

class TeacherScheduleTimeView extends GetView<TeacherScheduleTimeController> {
  const TeacherScheduleTimeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TeacherScheduleTimeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TeacherScheduleTimeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
