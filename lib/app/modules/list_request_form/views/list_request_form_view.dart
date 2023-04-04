// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_request_form_controller.dart';

class ListRequestFormView extends GetView<ListRequestFormController> {
  const ListRequestFormView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListRequestFormView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ListRequestFormView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
