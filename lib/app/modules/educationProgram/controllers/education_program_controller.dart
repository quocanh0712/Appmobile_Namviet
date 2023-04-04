// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/educationProgram/model/education_program_request.dart';
import 'package:ftu_lms/app/modules/educationProgram/model/education_program_response.dart';
import 'package:ftu_lms/app/modules/educationProgram/repository/education_program_repository.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/widgets/search_advance_view.dart';
import 'package:get/get.dart';

class EducationProgramController extends BaseListController<EducationProgramResponse> {
  EducationProgramRequest _educationProgramRequest = const EducationProgramRequest();
  EducationProgramRequest _educationProgramRequestDraft = const EducationProgramRequest();

  EducationProgramRequest getEducationProgramRequest() => _educationProgramRequest;

  void filterEducationProgramRequest() {
    if (_educationProgramRequestDraft == _educationProgramRequest) return;
    _educationProgramRequest = _educationProgramRequestDraft;
    refreshData();
  }

  @override
  Future<Result<BaseResponseObject<List<EducationProgramResponse?>?>, Exception>> callToHost() {
    EducationProgramRepository repository = Get.find();
    return repository.getListEducationProgram(_educationProgramRequest.copyWith(
        semester: _educationProgramRequest.semester ?? 1,
        startindex: pageIndex,
        length: maxLengthResult));
  }

  void setSearchAdvanceResponse(SearchAdvanceResponse? model) {
    _educationProgramRequestDraft = _educationProgramRequest.copyWith(
      year: model?.year,
      semester: model?.semester,
    );
  }
}
