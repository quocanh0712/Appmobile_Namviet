// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:dio/dio.dart';
import 'package:ftu_lms/app/modules/chat/repository/chat_repository.dart';
import 'package:ftu_lms/app/modules/chat/repository/impl/chat_repository_impl.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/repository/create_email_repository.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/repository/impl/create_email_repository_impl.dart';
import 'package:ftu_lms/app/modules/infiniteListSample/data/repository/impl/photo_repository_impl.dart';
import 'package:ftu_lms/app/modules/infiniteListSample/data/repository/photo_repository.dart';
import 'package:ftu_lms/app/modules/login/controllers/login_controller.dart';
import 'package:ftu_lms/data/bean/app_configurations.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/repositories/app_configs_repository.dart';
import 'package:ftu_lms/data/repositories/finance_repository.dart';
import 'package:ftu_lms/data/repositories/home_repository.dart';
import 'package:ftu_lms/data/repositories/impl/app_configs_repository_impl.dart';
import 'package:ftu_lms/data/repositories/impl/finance_repository_impl.dart';
import 'package:ftu_lms/data/repositories/impl/home_repository_impl.dart';
import 'package:ftu_lms/data/repositories/impl/inventory_repository_impl.dart';
import 'package:ftu_lms/data/repositories/impl/learning_result_repository_impl.dart';
import 'package:ftu_lms/data/repositories/impl/notification_repository_impl.dart';
import 'package:ftu_lms/data/repositories/impl/practice_point_repository_impl.dart';
import 'package:ftu_lms/data/repositories/impl/test_schedule_repository_impl.dart';
import 'package:ftu_lms/data/repositories/impl/user_repository_impl.dart';
import 'package:ftu_lms/data/repositories/inventory_repository.dart';
import 'package:ftu_lms/data/repositories/learning_result_repository.dart';
import 'package:ftu_lms/data/repositories/notification_repository.dart';
import 'package:ftu_lms/data/repositories/practice_point_repository.dart';
import 'package:ftu_lms/data/repositories/test_schedule_repository.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/utils/biometric_auth/biometric_authenticator.dart';
import 'package:ftu_lms/utils/biometric_auth/impl/biometric_authenticator_impl.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:local_auth/local_auth.dart';

import '../data/repositories/activity_repository.dart';
import '../data/repositories/impl/activity_repository_impl.dart';

import 'modules/login/services/session_service.dart';

class AppGlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio());
    Hive.registerAdapter(AppConfigurationsAdapter());
    Hive.registerAdapter(UserObjectAdapter());
    Get.lazyPut<AppConfigsRepository>(() => AppConfigurationsRepositoryImpl(), fenix: true);
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl(), fenix: true);
    Get.lazyPut<LocalAuthentication>(() => LocalAuthentication(), fenix: true);
    Get.lazyPut<BiometricAuthenticator>(() => BiometricAuthenticatorImpl(), fenix: true);
    Get.lazyPut<NotificationRepository>(() => NotificationRepositoryImpl(), fenix: true);
    Get.lazyPut<PhotoRepository>(() => PhotoRepositoryImpl(), fenix: true);
    Get.lazyPut<LearningResultRepository?>(() => LearningResultRepositoryImpl(), fenix: true);
    Get.lazyPut<TestScheduleRepository?>(() => TestScheduleRepositoryImpl(), fenix: true);
    Get.lazyPut<HomeRepository?>(() => HomeRepositoryImpl(), fenix: true);
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
    Get.lazyPut<CreateEmailRepository>(() => CreateEmailRepositoryImpl(), fenix: true);
    Get.lazyPut<ChatRepository>(() => ChatRepositoryImpl(), fenix: true);
    Get.lazyPut(()=>SessionService());
    Get.lazyPut<ActivityRepository?>(() => ActivityRepositoryImpl(), fenix: true);
    Get.lazyPut<FinanceRepository?>(() => FinanceRepositoryImpl(), fenix: true);
    Get.lazyPut<PracticePointRepository?>(() => PracticePointRepositoryImpl(), fenix: true);
    Get.lazyPut<InventoryRepository?>(() => InventoryRepositoryImpl(), fenix: true);

  }
}
