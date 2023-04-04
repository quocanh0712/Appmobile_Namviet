// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/detail_conversation/model/comment_conversation.dart';
import 'package:ftu_lms/app/modules/detail_conversation/model/comment_insert_request.dart';
import 'package:ftu_lms/app/modules/detail_conversation/model/comment_request.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_request.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_response.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/repository/conversation_repository.dart';
import 'package:ftu_lms/data/remote/clients/conversation_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

class ConversationRepositoryImpl extends ConversationRepository {
  @override
  Future<Result<BaseResponseObject<List<ConversationResponse?>?>, NetworkError>>
      getListConversation(ConversationRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<ConversationResponse?>?>,
            BaseResponseObject<List<ConversationResponse?>?>>(
        route: ConversationClient.getListConversation(model),
        responseType: const BaseResponseObject<List<ConversationResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<List<CommentConversation?>?>, NetworkError>> getListComment(
      CommentRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<CommentConversation?>?>,
            BaseResponseObject<List<CommentConversation?>?>>(
        route: ConversationClient.getListComment(model),
        responseType: const BaseResponseObject<List<CommentConversation?>?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> insertNewComment(
      CommentInsertRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: ConversationClient.insertNewComment(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> insertNewConversation(
      ConversationResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: ConversationClient.insertNewConversation(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> updateNewConversation(
      ConversationResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: ConversationClient.updateNewConversation(model),
        responseType: const BaseResponseObject<int?>());
  }
}
