// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter_test/flutter_test.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:get/instance_manager.dart';

import '../../mocks/repositories.dart';

void main() {
  test('user repository ...', () async {
    final userRepo = Get.put<UserRepository>(MockUserRepository());
  });
}
