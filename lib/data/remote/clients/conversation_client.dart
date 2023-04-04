// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/detail_conversation/model/comment_insert_request.dart';
import 'package:ftu_lms/app/modules/detail_conversation/model/comment_request.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_request.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_response.dart';
import 'package:ftu_lms/app/modules/elearning/model/elearning_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'conversation_client.freezed.dart';

@freezed
class ConversationClient extends BaseClientGenerator with _$ConversationClient {
  ConversationClient._() : super();

  factory ConversationClient.getListConversation(ConversationRequest? model) = _ConversationList;
  factory ConversationClient.getListComment(CommentRequest? model) = _CommentList;
  factory ConversationClient.insertNewComment(CommentInsertRequest? model) = _InsertNewComment;
  factory ConversationClient.insertNewConversation(ConversationResponse? model) =
      _InsertNewConversation;
  factory ConversationClient.updateNewConversation(ConversationResponse? model) =
      _UpdateNewConversation;

  @override
  String get baseURL => '${super.baseURL}/TraoDoiPhanHoi';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        insertNewComment: (model) => model?.toJson() ?? {},
        getListConversation: (model) => model?.toJson() ?? {},
        getListComment: (model) => model?.toJson() ?? {},
        insertNewConversation: (model) => model?.toJson() ?? {},
        updateNewConversation: (model) => model?.toJson() ?? {},
        orElse: () => {});
  }

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => RequestMethods.post.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      getListComment: (model) => '/GetAllFeedback',
      insertNewComment: (model) => '/InsertFeedback',
      insertNewConversation: (model) => '/Insert',
      updateNewConversation: (model) => '/Update',
      orElse: () => '/GetAll',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}
