// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/training_points_controller.dart';

class TrainingPointsView extends GetView<TrainingPointsController> {
  const TrainingPointsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TrainingPointsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Điểm rèn luyện',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
