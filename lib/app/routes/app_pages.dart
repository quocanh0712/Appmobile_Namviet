import 'package:get/get.dart';

import '../modules/Email/bindings/email_binding.dart';
import '../modules/Email/views/add_email/bindings/add_email_binding.dart';
import '../modules/Email/views/add_email/views/add_mail_view.dart';
import '../modules/Email/views/email_view.dart';
import '../modules/account/bindings/account_binding.dart';
import '../modules/account/views/account_view.dart';
import '../modules/activity/bindings/activity_binding.dart';
import '../modules/activity/views/activity_view.dart';
import '../modules/appInformation/bindings/app_information_binding.dart';
import '../modules/appInformation/views/app_information_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/checkin/bindings/checkin_binding.dart';
import '../modules/checkin/views/checkin_view.dart';
import '../modules/class_survey_result/bindings/class_survey_result_binding.dart';
import '../modules/class_survey_result/views/class_survey_result_view.dart';
import '../modules/create_new_certificate/bindings/create_new_certificate_binding.dart';
import '../modules/create_new_certificate/views/create_new_certificate_view.dart';
import '../modules/create_new_conversation/bindings/create_new_conversation_binding.dart';
import '../modules/create_new_conversation/views/create_new_conversation_view.dart';
import '../modules/create_new_form/bindings/create_new_form_binding.dart';
import '../modules/create_new_form/views/create_new_form_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/detail_conversation/bindings/detail_conversation_binding.dart';
import '../modules/detail_conversation/views/detail_conversation_view.dart';
import '../modules/discuss_feedback/bindings/discuss_feedback_binding.dart';
import '../modules/discuss_feedback/views/discuss_feedback_view.dart';
import '../modules/document_form/bindings/document_form_binding.dart';
import '../modules/document_form/views/document_form_view.dart';
import '../modules/document_form_item/bindings/document_form_item_binding.dart';
import '../modules/document_form_item/views/document_form_item_view.dart';
import '../modules/document_management/bindings/document_management_binding.dart';
import '../modules/document_management/views/document_management_view.dart';
import '../modules/educationProgram/bindings/education_program_binding.dart';
import '../modules/educationProgram/views/education_program_view.dart';
import '../modules/elearning/bindings/elearning_binding.dart';
import '../modules/elearning/views/elearning_detail_view.dart';
import '../modules/elearning/views/elearning_view.dart';
import '../modules/executive_documents/bindings/assign_document_binding.dart';
import '../modules/executive_documents/bindings/executive_documents_binding.dart';
import '../modules/executive_documents/bindings/forward_document_binding.dart';
import '../modules/executive_documents/views/assign_document_view.dart';
import '../modules/executive_documents/views/edit_assign_document/bindings/edit_assign_document_binding.dart';
import '../modules/executive_documents/views/edit_assign_document/views/edit_assign_document_view.dart';
import '../modules/executive_documents/views/executive_documents_view.dart';
import '../modules/executive_documents/views/forward_document_view.dart';
import '../modules/financeOverview/billPayment/bindings/bill_payment_binding.dart';
import '../modules/financeOverview/billPayment/views/bill_payment_view.dart';
import '../modules/financeOverview/bindings/finance_overview_binding.dart';
import '../modules/financeOverview/financeBySemester/bindings/finance_by_semester_binding.dart';
import '../modules/financeOverview/financeBySemester/views/finance_by_semester_view.dart';
import '../modules/financeOverview/tuition/bindings/tuition_binding.dart';
import '../modules/financeOverview/tuition/views/tuition_view.dart';
import '../modules/financeOverview/views/finance_overview_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/infiniteListSample/bindings/infinite_list_sample_binding.dart';
import '../modules/infiniteListSample/views/infinite_list_sample_view.dart';
import '../modules/item_scientific_research/bindings/item_scientific_research_binding.dart';
import '../modules/item_scientific_research/views/item_scientific_research_view.dart';
import '../modules/list_certificates/bindings/list_certificates_binding.dart';
import '../modules/list_certificates/views/list_certificates_view.dart';
import '../modules/list_class_managers/bindings/list_class_managers_binding.dart';
import '../modules/list_class_managers/views/list_class_managers_view.dart';
import '../modules/list_request_form/bindings/list_request_form_binding.dart';
import '../modules/list_request_form/views/list_request_form_view.dart';
import '../modules/list_teacher_info/bindings/list_teacher_info_binding.dart';
import '../modules/list_teacher_info/views/list_teacher_info_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/notificationDetails/bindings/notification_details_binding.dart';
import '../modules/notification/notificationDetails/views/notification_details_view.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/one_gate/bindings/one_gate_binding.dart';
import '../modules/one_gate/views/one_gate_view.dart';
import '../modules/personal/bindings/personal_binding.dart';
import '../modules/personal/consciousnessEvaluation/bindings/consciousness_evaluation_binding.dart';
import '../modules/personal/consciousnessEvaluation/views/consciousness_evaluation_view.dart';
import '../modules/personal/coursePoints/bindings/course_points_binding.dart';
import '../modules/personal/coursePoints/views/course_points_view.dart';
import '../modules/personal/learningResults/bindings/learning_results_binding.dart';
import '../modules/personal/learningResults/views/learning_results_view.dart';
import '../modules/personal/passwordEdition/bindings/password_edition_binding.dart';
import '../modules/personal/passwordEdition/views/password_edition_view.dart';
import '../modules/personal/profile/bindings/profile_binding.dart';
import '../modules/personal/profile/views/profile_view.dart';
import '../modules/personal/profileEdition/bindings/profile_edition_binding.dart';
import '../modules/personal/profileEdition/views/profile_edition_view.dart';
import '../modules/personal/semesterPoints/bindings/semester_points_binding.dart';
import '../modules/personal/semesterPoints/views/semester_points_view.dart';
import '../modules/personal/testingPlaning/bindings/testing_planing_binding.dart';
import '../modules/personal/testingPlaning/views/testing_planing_view.dart';
import '../modules/personal/trainingPoints/bindings/training_points_binding.dart';
import '../modules/personal/trainingPoints/views/training_points_view.dart';
import '../modules/personal/views/personal_view.dart';
import '../modules/practicePoints/practicePointDetail/bindings/practice_point_detail_binding.dart';
import '../modules/practicePoints/practicePointDetail/views/practice_point_detail_view.dart';
import '../modules/practicePoints/practicePointOverview/bindings/practice_point_overview_binding.dart';
import '../modules/practicePoints/practicePointOverview/views/practice_point_overview_view.dart';
import '../modules/report_task/bindings/report_task_binding.dart';
import '../modules/report_task/views/edit_report_task/bindings/edit_report_task_binding.dart';
import '../modules/report_task/views/edit_report_task/views/edit_report_task_view.dart';
import '../modules/report_task/views/report_task_view.dart';
import '../modules/reward_discipline/bindings/reward_discipline_binding.dart';
import '../modules/reward_discipline/views/discipline/bindings/discipline_binding.dart';
import '../modules/reward_discipline/views/discipline/views/discipline_view.dart';
import '../modules/reward_discipline/views/reward/bindings/reward_binding.dart';
import '../modules/reward_discipline/views/reward/views/reward_view.dart';
import '../modules/reward_discipline/views/reward_discipline_view.dart';
import '../modules/schedule_checkin/bindings/schedule_checkin_binding.dart';
import '../modules/schedule_checkin/views/schedule_checkin_view.dart';
import '../modules/schedule_daily/bindings/schedule_daily_binding.dart';
import '../modules/schedule_daily/views/schedule_daily_view.dart';
import '../modules/schedule_time/bindings/schedule_time_binding.dart';
import '../modules/schedule_time/views/schedule_time_view.dart';
import '../modules/scientific_research/bindings/scientific_research_binding.dart';
import '../modules/scientific_research/views/scientific_research_view.dart';
import '../modules/send_request/bindings/send_request_binding.dart';
import '../modules/send_request/views/send_request_view.dart';
import '../modules/serviceRequestList/bindings/service_request_list_binding.dart';
import '../modules/serviceRequestList/views/allServiceRequestList/bindings/all_service_request_list_binding.dart';
import '../modules/serviceRequestList/views/allServiceRequestList/views/all_service_request_list_view.dart';
import '../modules/serviceRequestList/views/approvedServiceRequestList/bindings/approved_service_request_list_binding.dart';
import '../modules/serviceRequestList/views/approvedServiceRequestList/views/approved_service_request_list_view.dart';
import '../modules/serviceRequestList/views/rejectedServiceRequestList/bindings/rejected_service_request_list_binding.dart';
import '../modules/serviceRequestList/views/rejectedServiceRequestList/views/rejected_service_request_list_view.dart';
import '../modules/serviceRequestList/views/service_request_list_view.dart';
import '../modules/serviceRequestList/views/waitingServiceRequestList/bindings/waiting_service_request_list_binding.dart';
import '../modules/serviceRequestList/views/waitingServiceRequestList/views/waiting_service_request_list_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/statistical/bindings/statistical_binding.dart';
import '../modules/statistical/views/statistical_view.dart';
import '../modules/stu_checkin/bindings/stu_checkin_binding.dart';
import '../modules/stu_checkin/views/list_stu_checkin_view.dart';
import '../modules/stu_checkin/views/list_stu_nocheckin_view.dart';
import '../modules/stu_checkin/views/stu_certificate_manager_view.dart';
import '../modules/stu_checkin/views/stu_checkin_view.dart';
import '../modules/stu_checkin/views/stu_cross_manager_view.dart';
import '../modules/stu_checkin/views/stu_outside_manager_view.dart';
import '../modules/stu_checkin/views/stu_work_manager_view.dart';
import '../modules/survey_result/bindings/survey_result_binding.dart';
import '../modules/survey_result/views/survey_item/bindings/survey_item_binding.dart';
import '../modules/survey_result/views/survey_item/views/survey_item_view.dart';
import '../modules/survey_result/views/survey_result_view.dart';
import '../modules/teacher_schedule_time/bindings/teacher_schedule_time_binding.dart';
import '../modules/teacher_schedule_time/views/teacher_schedule_time_view.dart';
import '../modules/track_progress/bindings/track_progress_binding.dart';
import '../modules/track_progress/views/track_progress_view.dart';
import '../modules/working_process/bindings/create/create_language_process_binding.dart';
import '../modules/working_process/bindings/create/create_learning_process_binding.dart';
import '../modules/working_process/bindings/create/create_working_process_binding.dart';
import '../modules/working_process/bindings/language_process_binding.dart';
import '../modules/working_process/bindings/learning_process_binding.dart';
import '../modules/working_process/bindings/learning_profile_binding.dart';
import '../modules/working_process/bindings/list_working_process_binding.dart';
import '../modules/working_process/bindings/working_process_binding.dart';
import '../modules/working_process/views/create/create_language_process_view.dart';
import '../modules/working_process/views/create/create_learning_process_view.dart';
import '../modules/working_process/views/create/create_working_process_view.dart';
import '../modules/working_process/views/language_process_view.dart';
import '../modules/working_process/views/learning_process_view.dart';
import '../modules/working_process/views/learning_profile_view.dart';
import '../modules/working_process/views/list_working_process_view.dart';
import '../modules/working_process/views/working_process_view.dart';

// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(bindingCreator: () => HomeBinding())),
    GetPage(
        name: _Paths.DASHBOARD,
        page: () => const DashboardView(),
        bindings: [DashboardBinding(), NotificationBinding()]),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(bindingCreator: () => NotificationBinding()),
    ),
    GetPage(
      name: _Paths.CHECKIN,
      page: () => const CheckinView(),
      binding: CheckinBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
        name: _Paths.PERSONAL,
        page: () => PersonalView(bindingCreator: () => PersonalBinding())),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORD_EDITION,
      page: () => PasswordEditionView(),
      binding: PasswordEditionBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_EDITION,
      page: () => ProfileEditionView(),
      binding: ProfileEditionBinding(),
    ),
    GetPage(
      name: _Paths.TESTING_PLANING,
      page: () => TestingPlaningView(),
      binding: TestingPlaningBinding(),
    ),
    GetPage(
      name: _Paths.TRAINING_POINTS,
      page: () => const TrainingPointsView(),
      binding: TrainingPointsBinding(),
    ),
    GetPage(
      name: _Paths.CONSCIOUSNESS_EVALUATION,
      page: () => const ConsciousnessEvaluationView(),
      binding: ConsciousnessEvaluationBinding(),
    ),
    GetPage(
      name: _Paths.LEARNING_RESULTS,
      page: () => LearningResultsView(),
      binding: LearningResultsBinding(),
    ),
    GetPage(
      name: _Paths.SEMESTER_POINTS,
      page: () => SemesterPointsView(),
      binding: SemesterPointsBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE_TIME,
      page: () => ScheduleTimeView(),
      binding: ScheduleTimeBinding(),
    ),
    GetPage(
      name: _Paths.EDUCATION_PROGRAM,
      page: () => EducationProgramView(),
      binding: EducationProgramBinding(),
    ),
    GetPage(
      name: _Paths.TUITION,
      page: () => TuitionView(),
      binding: TuitionBinding(),
    ),
    GetPage(
      name: _Paths.FINANCE_OVERVIEW,
      page: () => FinanceOverviewView(),
      binding: FinanceOverviewBinding(),
    ),
    GetPage(
      name: _Paths.FINANCE_BY_SEMESTER,
      page: () => FinanceBySemesterView(),
      binding: FinanceBySemesterBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE_DAILY,
      page: () => ScheduleDailyView(),
      binding: ScheduleDailyBinding(),
    ),
    GetPage(
        name: _Paths.APP_INFORMATION,
        page: () =>
            AppInformationView(bindingCreator: () => AppInformationBinding())),
    GetPage(
      name: _Paths.INFINITE_LIST_SAMPLE,
      page: () => InfiniteListSampleView(),
      binding: InfiniteListSampleBinding(),
    ),
    GetPage(
      name: _Paths.SCIENTIFIC_RESEARCH,
      page: () => ScientificResearchView(),
      binding: ScientificResearchBinding(),
    ),
    GetPage(
      name: _Paths.ITEM_SCIENTIFIC_RESEARCH,
      page: () => ItemScientificResearchView(),
      binding: ItemScientificResearchBinding(),
    ),
    GetPage(
      name: _Paths.SURVEY_RESULT,
      page: () => SurveyResultView(),
      binding: SurveyResultBinding(),
    ),
    GetPage(
      name: _Paths.ELEARNING,
      page: () => ElearningView(),
      binding: ElearningBinding(),
    ),
    GetPage(
      name: _Paths.DOCUMENT_FORM,
      page: () => DocumentFormView(),
      binding: DocumentFormBinding(),
    ),
    GetPage(
      name: _Paths.ONE_GATE,
      page: () => OneGateView(),
      binding: OneGateBinding(),
    ),
    GetPage(
      name: _Paths.LIST_TEACHER_INFO,
      page: () => ListTeacherInfoView(),
      binding: ListTeacherInfoBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_NEW_FORM,
      page: () => CreateNewFormView(),
      binding: CreateNewFormBinding(),
    ),
    GetPage(
      name: _Paths.LIST_REQUEST_FORM,
      page: () => ListRequestFormView(),
      binding: ListRequestFormBinding(),
    ),
    GetPage(
      name: _Paths.DOCUMENT_FORM_ITEM,
      page: () => DocumentFormItemView(),
      binding: DocumentFormItemBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE_REQUEST_LIST,
      page: () => ServiceRequestListView(),
      binding: ServiceRequestListBinding(),
    ),
    GetPage(
      name: _Paths.ALL_SERVICE_REQUEST_LIST,
      page: () => AllServiceRequestListView(),
      binding: AllServiceRequestListBinding(),
    ),
    GetPage(
      name: _Paths.WAITING_SERVICE_REQUEST_LIST,
      page: () => WaitingServiceRequestListView(),
      binding: WaitingServiceRequestListBinding(),
    ),
    GetPage(
      name: _Paths.APPROVED_SERVICE_REQUEST_LIST,
      page: () => ApprovedServiceRequestListView(),
      binding: ApprovedServiceRequestListBinding(),
    ),
    GetPage(
      name: _Paths.REJECTED_SERVICE_REQUEST_LIST,
      page: () => RejectedServiceRequestListView(),
      binding: RejectedServiceRequestListBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION_DETAILS,
      page: () => NotificationDetailsView(),
      binding: NotificationDetailsBinding(),
    ),
    GetPage(
      name: _Paths.DISCUSS_FEEDBACK,
      page: () => DiscussFeedbackView(),
      binding: DiscussFeedbackBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_NEW_CONVERSATION,
      page: () => CreateNewConversationView(),
      binding: CreateNewConversationBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_CONVERSATION,
      page: () => DetailConversationView(),
      binding: DetailConversationBinding(),
    ),
    GetPage(
      name: _Paths.COURSE_POINTS,
      page: () => CoursePointsView(),
      binding: CoursePointsBinding(),
    ),
    GetPage(
      name: _Paths.LIST_CERTIFICATES,
      page: () => ListCertificatesView(),
      binding: ListCertificatesBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_NEW_CERTIFICATE,
      page: () => CreateNewCertificateView(),
      binding: CreateNewCertificateBinding(),
    ),
    GetPage(
      name: _Paths.BILL_PAYMENT,
      page: () => BillPaymentView(),
      binding: BillPaymentBinding(),
    ),
    GetPage(
      name: _Paths.PRACTICE_POINT_OVERVIEW,
      page: () => PracticePointOverviewView(),
      binding: PracticePointOverviewBinding(),
    ),
    GetPage(
      name: _Paths.PRACTICE_POINT_DETAIL,
      page: () => PracticePointDetailView(),
      binding: PracticePointDetailBinding(),
    ),
    GetPage(
      name: _Paths.WORKING_PROCESS,
      page: () => WorkingProcessView(),
      binding: WorkingProcessBinding(),
    ),
    GetPage(
      name: _Paths.LEARNING_PROCESS,
      page: () => LearningProcessView(),
      binding: LearningProcessBinding(),
    ),
    GetPage(
      name: _Paths.LIST_WORKING_PROCESS,
      page: () => ListWorkingProcessView(),
      binding: ListWorkingProcessBinding(),
    ),
    GetPage(
      name: _Paths.LANGUAGE_PROCESS,
      page: () => LanguageProcessView(),
      binding: LanguageProcessBinding(),
    ),
    GetPage(
      name: _Paths.LEARNING_PROFILE,
      page: () => LearningProfileView(),
      binding: LearningProfileBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_WORKING_PROCESS,
      page: () => CreateWorkingProcessView(),
      binding: CreateWorkingProcessBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_LANGUAGE_PROCESS,
      page: () => CreateLanguageProcessView(),
      binding: CreateLanguageProcessBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_LEARNING_PROCESS,
      page: () => CreateLearningProcessView(),
      binding: CreateLearningProcessBinding(),
    ),
    GetPage(
      name: _Paths.REWARD_DISCIPLINE,
      page: () => RewardDisciplineView(),
      binding: RewardDisciplineBinding(),
    ),
    GetPage(
      name: _Paths.REWARD,
      page: () => RewardView(),
      binding: RewardBinding(),
    ),
    GetPage(
      name: _Paths.DISCIPLINE,
      page: () => DisciplineView(),
      binding: DisciplineBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.SURVEY_ITEM,
      page: () => SurveyItemView(),
      binding: SurveyItemBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE_CHECKIN,
      page: () => ScheduleCheckinView(),
      binding: ScheduleCheckinBinding(),
    ),
    GetPage(
      name: _Paths.ELEARNING_DETAIL,
      page: () => ElearningDeTailView(),
      binding: ElearningBinding(),
    ),
    GetPage(
      name: _Paths.LIST_CLASS_MANAGERS,
      page: () => ListClassManagersView(),
      binding: ListClassManagersBinding(),
    ),
    GetPage(
      name: _Paths.CLASS_SURVEY_RESULT,
      page: () => ClassSurveyResultView(),
      binding: ClassSurveyResultBinding(),
    ),
    GetPage(
      name: _Paths.STU_CHECKIN_MANAGER,
      page: () => StuCheckinView(),
      binding: StuCheckinBinding(),
    ),
    GetPage(
      name: _Paths.STU_CHECKIN,
      page: () => ListStuCheckinView(),
      binding: StuCheckinBinding(),
    ),
    GetPage(
      name: _Paths.STU_NOCHECKIN,
      page: () => ListStuNoCheckinView(),
      binding: StuCheckinBinding(),
    ),
    GetPage(
      name: _Paths.STU_WORK_MANAGER,
      page: () => StuWorkManagerView(),
      binding: StuCheckinBinding(),
    ),
    GetPage(
      name: _Paths.STU_CROSS_MANAGER,
      page: () => StuCrossManagerView(),
      binding: StuCheckinBinding(),
    ),
    GetPage(
      name: _Paths.STU_CERTIFICATE_MANAGER,
      page: () => StuCertificateManagerView(),
      binding: StuCheckinBinding(),
    ),
    GetPage(
      name: _Paths.STU_OUTSIDE_MANAGER,
      page: () => StuOutsideManagerView(),
      binding: StuCheckinBinding(),
    ),
    GetPage(
      name: _Paths.EXECUTIVE_DOCUMENTS,
      page: () => ExecutiveDocumentsView(),
      binding: ExecutiveDocumentsBinding(),
    ),
    GetPage(
      name: _Paths.SEND_REQUEST,
      page: () => SendRequestView(),
      binding: SendRequestBinding(),
    ),
    GetPage(
      name: _Paths.ASSIGN_DOCUMENT,
      page: () => AssignDocumentView(),
      binding: AssignDocumentBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_ASSIGN_DOCUMENT,
      page: () => EditAssignDocumenView(),
      binding: EditAssignDocumentBinding(),
    ),
    GetPage(
      name: _Paths.FORWARD_DOCUMENT,
      page: () => ForwardDocumentView(),
      binding: ForwardDocumentBinding(),
    ),
    GetPage(
      name: _Paths.REPORT_TASK,
      page: () => ReportTaskView(),
      binding: ReportTaskBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_REPORT_TASK,
      page: () => EditReportTaskView(),
      binding: EditReportTaskBinding(),
    ),
    GetPage(
      name: _Paths.EMAIL,
      page: () => EmailView(),
      binding: EmailBinding(),
    ),
    GetPage(
      name: _Paths.ADD_EMAIL,
      page: () => AddEmailView(),
      binding: AddEmailBinding(),
    ),
    GetPage(
        name: _Paths.ACTIVITY,
        page: () => ActivityView(bindingCreator: () => ActivityBinding())),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(
        bindingCreator: () => ChatBinding(),
      ),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.DOCUMENT_MANAGEMENT,
      page: () => DocumentManagementView(
        bindingCreator: () => DocumentManagementBinding(),
      ),
      binding: DocumentManagementBinding(),
    ),
    GetPage(
      name: _Paths.STATISTICAL,
      page: () => StatisticalView(
        bindingCreator: () => StatisticalBinding(),
      ),
      binding: StatisticalBinding(),
    ),
    GetPage(
      name: _Paths.TRACK_PROGRESS,
      page: () => TrackProgressView(
        bindingCreator: () => TrackProgressBinding(),
      ),
      binding: TrackProgressBinding(),
    ),
    GetPage(
      name: _Paths.TEACHER_SCHEDULE_TIME,
      page: () => const TeacherScheduleTimeView(),
      binding: TeacherScheduleTimeBinding(),
    ),
  ];
}
