// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/consciousness_evaluation_controller.dart';

class ConsciousnessEvaluationView extends GetView<ConsciousnessEvaluationController> {
  const ConsciousnessEvaluationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConsciousnessEvaluationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Đánh giá ý thức học tập',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
