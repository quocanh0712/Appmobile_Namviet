// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/financeOverview/views/financeTeacher/models/finance_teacher_request.dart';
import 'package:ftu_lms/app/modules/financeOverview/views/financeTeacher/models/finance_teacher_response.dart';
import 'package:ftu_lms/data/bean/finance_response_object/finance_response_object.dart';
import 'package:ftu_lms/data/bean/semester_bill_response_object/semester_bill_response_object.dart';
import 'package:ftu_lms/data/remote/clients/finance_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/requests/finance_request_params/finance_request_params.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/data/repositories/finance_repository.dart';

class FinanceRepositoryImpl extends FinanceRepository {
  @override
  Future<Result<BaseResponseObject<FinanceResponseObject?>, NetworkError>> getAll(
      FinanceRequestParams? params) async {
    return NetworkExecutor.execute<BaseResponseObject<FinanceResponseObject?>,
            BaseResponseObject<FinanceResponseObject?>>(
        route: FinanceClient.getAll(params),
        responseType: const BaseResponseObject<FinanceResponseObject?>());
  }

  @override
  Future<Result<BaseResponseObject<List<SemesterBillResponseObject?>?>, NetworkError>> getAllBills(
      FinanceRequestParams? params) async {
    return NetworkExecutor.execute<BaseResponseObject<List<SemesterBillResponseObject?>?>,
            BaseResponseObject<List<SemesterBillResponseObject?>?>>(
        route: FinanceClient.getAllBills(params),
        responseType: const BaseResponseObject<List<SemesterBillResponseObject?>?>());
  }

  @override
  Future<Result<BaseResponseObject<List<FinanceTeacherResponse?>?>, NetworkError>> getSalary(
      FinanceTeacherRequest? params) async {
    return NetworkExecutor.execute<BaseResponseObject<List<FinanceTeacherResponse?>?>,
        BaseResponseObject<List<FinanceTeacherResponse?>?>>(
        route: FinanceClient.getSalary(params),
        responseType: const BaseResponseObject<List<FinanceTeacherResponse?>?>());
  }
}
