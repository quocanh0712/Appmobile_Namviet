// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/finance_response_object/finance_response_object.dart';
import 'package:ftu_lms/data/bean/semester_bill_response_object/semester_bill_response_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/requests/finance_request_params/finance_request_params.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class FinanceRepository {
  Future<Result<BaseResponseObject<FinanceResponseObject?>, NetworkError>> getAll(
      FinanceRequestParams? params);
  Future<Result<BaseResponseObject<List<SemesterBillResponseObject?>?>, NetworkError>> getAllBills(
      FinanceRequestParams? params);
}
