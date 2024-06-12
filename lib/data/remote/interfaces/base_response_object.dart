// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'dart:math' as math;
import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/attendance_stu/model/attendance_stu_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/model/year_time_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/model/list_lesson_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/model/list_student_attendance_response.dart';
import 'package:ftu_lms/app/modules/detail_conversation/model/comment_conversation.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_response.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/models/all_user_response.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/models/create_email_response.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_response.dart';
import 'package:ftu_lms/app/modules/document_form/model/my_request_document_response.dart';
import 'package:ftu_lms/app/modules/educationProgram/model/education_program_response.dart';
import 'package:ftu_lms/app/modules/elearning/model/elearning_response.dart';
import 'package:ftu_lms/app/modules/financeOverview/views/financeTeacher/models/finance_teacher_response.dart';
import 'package:ftu_lms/app/modules/infiniteListSample/data/bean/photo_object.dart';
import 'package:ftu_lms/app/modules/item_scientific_research/model/item_scientific_research_response.dart';
import 'package:ftu_lms/app/modules/list_certificates/model/certificate_response.dart';
import 'package:ftu_lms/app/modules/list_teacher_info/model/teacher_info_response.dart';
import 'package:ftu_lms/app/modules/reward_discipline/views/discipline/model/discipline_response.dart';
import 'package:ftu_lms/app/modules/reward_discipline/views/reward/model/reward_response.dart';
import 'package:ftu_lms/app/modules/schedule_daily/model/schedule_daily_response.dart';
import 'package:ftu_lms/app/modules/schedule_time/model/schedule_time_response.dart';
import 'package:ftu_lms/app/modules/scientific_research/model/scientific_research_response.dart';
import 'package:ftu_lms/app/modules/seminar/model/seminar_response.dart';
import 'package:ftu_lms/app/modules/survey_result/model/survey_result_response.dart';
import 'package:ftu_lms/app/modules/survey_result/views/survey_item/model/survey_item_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/key_value_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/language_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_profile_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_response.dart';
import 'package:ftu_lms/data/bean/CheckIn/checkin_object.dart';
import 'package:ftu_lms/data/bean/all_courses_points_object/all_courses_points_object.dart';
import 'package:ftu_lms/data/bean/finance_response_object/finance_response_object.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_response_object.dart';
import 'package:ftu_lms/data/bean/notification_object/notification_object.dart';
import 'package:ftu_lms/data/bean/practice_point_detail_response_object/practice_point_detail_response_object.dart';
import 'package:ftu_lms/data/bean/practice_point_response_object/practice_point_response_object.dart';
import 'package:ftu_lms/data/bean/semester_bill_response_object/semester_bill_response_object.dart';
import 'package:ftu_lms/data/bean/semester_point_object/semester_point_object.dart';
import 'package:ftu_lms/data/bean/service_request_object/service_request_object.dart';
import 'package:ftu_lms/data/bean/single_course_points_object/single_course_points_object.dart';
import 'package:ftu_lms/data/bean/test_schedule_object/test_schedule_object.dart';
import 'package:ftu_lms/data/bean/testing_plan_object/testing_plan_object.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/utils/extensions/color_extension.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../app/modules/document_searching/model/document_searching_response.dart';
import '../../bean/CheckIn/schedule_checkin_object.dart';
import '../../bean/activity_response_object/activity_response_object.dart';

part 'base_response_object.g.dart';

const String successStatus = "0000";

@JsonSerializable(genericArgumentFactories: true)
class BaseResponseObject<T> extends Equatable {
  final String? code;
  final String? message;
  final T? result;

  const BaseResponseObject({this.code, this.message, this.result});

  bool isSuccess() => code == successStatus;

  factory BaseResponseObject.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) jsonToT,
  ) {
    return _$BaseResponseObjectFromJson<T>(json, jsonToT);
  }

  Map<String, dynamic> toJson(
    Map<String, dynamic> Function(T value) toJsonT,
  ) {
    return _$BaseResponseObjectToJson<T>(this, toJsonT);
  }

  @override
  List<Object?> get props => [code, message, result];
}

extension NetworkResponseConverter on BaseResponseObject {
  Object? decodeJson(Map<String, dynamic> json) {
    if (this is BaseResponseObject<UserObject>) {
      return BaseResponseObject<UserObject>.fromJson(json, jsonToUserObject);
    }
    if (this is BaseResponseObject<UserObject?>) {
      return BaseResponseObject<UserObject?>.fromJson(
          json, jsonToNullableUserObject);
    }
    if (this is BaseResponseObject<CheckInObject>) {
      return BaseResponseObject<CheckInObject>.fromJson(
          json, jsonToCheckInObject);
    }
    if (this is BaseResponseObject<CreateEmailResponse>) {
      return BaseResponseObject<CreateEmailResponse>.fromJson(
          json, jsonToCreateEmailResponse);
    }
    if (this is BaseResponseObject<CheckInObject?>) {
      return BaseResponseObject<CheckInObject?>.fromJson(
          json, jsonToNullableCheckInObject);
    }
    if (this is BaseResponseObject<List<UserObject>>) {
      return BaseResponseObject<List<UserObject>>.fromJson(
          json, jsonToListUserObjects);
    }
    if (this is BaseResponseObject<List<UserObject?>>) {
      return BaseResponseObject<List<UserObject?>>.fromJson(
          json, jsonToListNullableUserObjects);
    }
    if (this is BaseResponseObject<List<UserObject>?>) {
      return BaseResponseObject<List<UserObject>?>.fromJson(
          json, jsonToListUserObjects);
    }
    if (this is BaseResponseObject<List<ScheDuleCheckInObject?>>) {
      return BaseResponseObject<List<ScheDuleCheckInObject?>>.fromJson(
          json, jsonToListNullableScheDuleCheckInObjects);
    }
    if (this is BaseResponseObject<List<ScheDuleCheckInObject>?>) {
      return BaseResponseObject<List<ScheDuleCheckInObject>?>.fromJson(
          json, jsonToListScheDuleCheckInObjects);
    }
    if (this is BaseResponseObject<List<KeyValueResponse?>?>) {
      return BaseResponseObject<List<KeyValueResponse?>?>.fromJson(
          json, jsonToListNullableKeyValueResponses);
    }
    if (this is BaseResponseObject<List<UserObject?>?>) {
      return BaseResponseObject<List<UserObject?>?>.fromJson(
          json, jsonToListNullableUserObjects);
    }
    if (this is BaseResponseObject<List<ScheduleTimeResponse?>?>) {
      return BaseResponseObject<List<ScheduleTimeResponse?>?>.fromJson(
          json, jsonToListNullableScheduleTimeResponses);
    }
    if (this is BaseResponseObject<List<ScheduleDailyResponse?>?>) {
      return BaseResponseObject<List<ScheduleDailyResponse?>?>.fromJson(
          json, jsonToListNullableScheduleDailyResponses);
    }
    if (this is BaseResponseObject<List<ScientificResearchResponse?>?>) {
      return BaseResponseObject<List<ScientificResearchResponse?>?>.fromJson(
          json, jsonToListNullableScientificResearchResponses);
    }
    if (this is BaseResponseObject<List<ItemScientificResearchResponse?>?>) {
      return BaseResponseObject<
              List<ItemScientificResearchResponse?>?>.fromJson(
          json, jsonToListNullableItemScientificResearchResponses);
    }
    if (this is BaseResponseObject<List<ConversationResponse?>?>) {
      return BaseResponseObject<List<ConversationResponse?>?>.fromJson(
          json, jsonToListNullableConversationResponses);
    }
    if (this is BaseResponseObject<List<WorkingProcessResponse?>?>) {
      return BaseResponseObject<List<WorkingProcessResponse?>?>.fromJson(
          json, jsonToListNullableWorkingProcessResponses);
    }
    if (this is BaseResponseObject<List<LanguageProcessResponse?>?>) {
      return BaseResponseObject<List<LanguageProcessResponse?>?>.fromJson(
          json, jsonToListNullableLanguageProcessResponses);
    }
    if (this is BaseResponseObject<List<LearningProcessResponse?>?>) {
      return BaseResponseObject<List<LearningProcessResponse?>?>.fromJson(
          json, jsonToListNullableLearningProcessResponses);
    }
    if (this is BaseResponseObject<List<DocumentFormResponse?>?>) {
      return BaseResponseObject<List<DocumentFormResponse?>?>.fromJson(
          json, jsonToListNullableDocumentFormResponses);
    }
    if (this is BaseResponseObject<List<SurveyItemResponse?>?>) {
      return BaseResponseObject<List<SurveyItemResponse?>?>.fromJson(
          json, jsonToListNullableSurveyItemResponses);
    }
    if (this is BaseResponseObject<List<AllUserResponse?>?>) {
      return BaseResponseObject<List<AllUserResponse?>?>.fromJson(
          json, jsonToListNullableAllUserResponse);
    }
    if (this is BaseResponseObject<List<SurveyResultResponse?>?>) {
      return BaseResponseObject<List<SurveyResultResponse?>?>.fromJson(
          json, jsonToListNullableSurveyResultResponses);
    }
    if (this is BaseResponseObject<List<CertificateResponse?>?>) {
      return BaseResponseObject<List<CertificateResponse?>?>.fromJson(
          json, jsonToListNullableCertificateResponses);
    }
    if (this is BaseResponseObject<List<CommentConversation?>?>) {
      return BaseResponseObject<List<CommentConversation?>?>.fromJson(
          json, jsonToListNullableCommentConversations);
    }
    if (this is BaseResponseObject<List<MyRequestDocumentResponse?>?>) {
      return BaseResponseObject<List<MyRequestDocumentResponse?>?>.fromJson(
          json, jsonToListNullableMyRequestDocumentResponses);
    }
    if (this is BaseResponseObject<List<TeacherInfoResponse?>?>) {
      return BaseResponseObject<List<TeacherInfoResponse?>?>.fromJson(
          json, jsonToListNullableTeacherInfoResponses);
    }
    if (this is BaseResponseObject<List<NotificationObject?>?>) {
      return BaseResponseObject<List<NotificationObject?>?>.fromJson(
          json, jsonToListNullableNotificationObjects);
    }
    if (this is BaseResponseObject<List<ELearningResponse?>?>) {
      return BaseResponseObject<List<ELearningResponse?>?>.fromJson(
          json, jsonToListNullableELearningResponses);
    }
    if (this is BaseResponseObject<List<EducationProgramResponse?>?>) {
      return BaseResponseObject<List<EducationProgramResponse?>?>.fromJson(
          json, jsonToListNullableEducationProgramResponses);
    }
    if (this is BaseResponseObject<List<RewardResponse?>?>) {
      return BaseResponseObject<List<RewardResponse?>?>.fromJson(
          json, jsonToListNullableRewardResponses);
    }
    if (this is BaseResponseObject<List<DisciplineResponse?>?>) {
      return BaseResponseObject<List<DisciplineResponse?>?>.fromJson(
          json, jsonToListNullableDisciplineResponses);
    }
    if (this is BaseResponseObject<PhotoObject?>) {
      json.addAll({
        'color': Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0)
            .toHexString()
      });
      return BaseResponseObject<PhotoObject?>.fromJson(
          {"result": json}, jsonToNullablePhotoObject);
    }
    if (this is BaseResponseObject<SemesterPointObject?>) {
      return BaseResponseObject<SemesterPointObject?>.fromJson(
          json, jsonToNullableSemesterPointObject);
    }



    if (this is BaseResponseObject<List<SeminarResponse?>?>) {
      return BaseResponseObject<List<SeminarResponse?>?>.fromJson(
          json, jsonToListNullableSeminarResponse);
    }

    if (this is BaseResponseObject<List<AttendanceStuResponse?>?>) {
      return BaseResponseObject<List<AttendanceStuResponse?>?>.fromJson(
          json, jsonToListNullableAttendanceStuResponse);
    }


    if (this is BaseResponseObject<List<DocumentSearchingResponse?>?>) {
      return BaseResponseObject<List<DocumentSearchingResponse?>?>.fromJson(
          json, jsonToListNullableDocumentSearchingResponse);
    }

    if (this is BaseResponseObject<List<YearTimeResponse?>?>) {
      return BaseResponseObject<List<YearTimeResponse?>?>.fromJson(
          json, jsonToListNullableYearTimeResponse);
    }

    if (this is BaseResponseObject<List<ListLessonResponse?>?>) {
      return BaseResponseObject<List<ListLessonResponse?>?>.fromJson(
          json, jsonToListNullableListLessonResponse);
    }


    if (this is BaseResponseObject<List<ListStudentAttendanceResponse?>?>) {
      return BaseResponseObject<List<ListStudentAttendanceResponse?>?>.fromJson(
          json, jsonToListNullableListStudentAttendanceResponse);
    }




    if (this is BaseResponseObject<LearningProfileResponse?>) {
      return BaseResponseObject<LearningProfileResponse?>.fromJson(
          json, jsonToNullableLearningProfileResponse);
    }
    if (this is BaseResponseObject<List<TestingPlanObject?>?>) {
      return BaseResponseObject<List<TestingPlanObject?>?>.fromJson(
          json, jsonToListNullableTestingPlanObjects);
    }
    if (this is BaseResponseObject<List<ServiceRequestObject?>?>) {
      return BaseResponseObject<List<ServiceRequestObject?>?>.fromJson(
          json, jsonToListNullableServiceRequestObjects);
    }
    if (this is BaseResponseObject<HomeResponseObject?>) {
      return BaseResponseObject<HomeResponseObject?>.fromJson(
          json, jsonToNullableHomeResponseObject);
    }
    if (this is BaseResponseObject<ActivityResponseObject?>) {
      return BaseResponseObject<ActivityResponseObject?>.fromJson(
          json, jsonToNullableActivityResponseObject);
    }
    if (this is BaseResponseObject<AllCoursesPointsObject?>) {
      return BaseResponseObject<AllCoursesPointsObject?>.fromJson(
          json, jsonToNullableAllCoursesPointsObject);
    }
    if (this is BaseResponseObject<List<SingleCoursePointsObject?>?>) {
      return BaseResponseObject<List<SingleCoursePointsObject?>?>.fromJson(
          json, jsonToListNullableSingleCoursePointsObjects);
    }
    if (this is BaseResponseObject<List<TestScheduleObject?>?>) {
      return BaseResponseObject<List<TestScheduleObject?>?>.fromJson(
          json, jsonToListNullableTestScheduleObjects);
    }
    if (this is BaseResponseObject<FinanceResponseObject?>) {
      return BaseResponseObject<FinanceResponseObject?>.fromJson(
          json, jsonToNullableFinanceResponseObject);
    }
    if (this is BaseResponseObject<List<SemesterBillResponseObject?>?>) {
      return BaseResponseObject<List<SemesterBillResponseObject?>?>.fromJson(
          json, jsonToListSemesterBillResponseObjects);
    }

    if (this is BaseResponseObject<List<FinanceTeacherResponse?>?>) {
      return BaseResponseObject<List<FinanceTeacherResponse?>?>.fromJson(
          json, jsonToListFinanceTeacherResponse);
    }


    if (this is BaseResponseObject<PracticePointResponseObject?>) {
      return BaseResponseObject<PracticePointResponseObject?>.fromJson(
          json, jsonToNullablePracticePointResponseObject);
    }
    if (this is BaseResponseObject<List<PracticePointDetailResponseObject?>?>) {
      return BaseResponseObject<
              List<PracticePointDetailResponseObject?>?>.fromJson(
          json, jsonToListNullablePracticePointDetailResponseObjects);
    }
    if (this is BaseResponseObject<int?>) {
      return BaseResponseObject<int?>.fromJson(json, jsonToInt);
    }
    if (this is BaseResponseObject<String?>) {
      return BaseResponseObject<String?>.fromJson(json, jsonToString);
    }
    Fimber.e('You need to implement the decodeJson method');
    return null;
  }

  int? jsonToInt(Object? json) => json as int?;
  String? jsonToString(Object? json) => json as String?;
}


