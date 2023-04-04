// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/detail_conversation/model/comment_conversation.dart';
import 'package:ftu_lms/app/modules/detail_conversation/model/comment_insert_request.dart';
import 'package:ftu_lms/app/modules/detail_conversation/model/comment_request.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_request.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_response.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class ConversationRepository {
  Future<Result<BaseResponseObject<List<ConversationResponse?>?>, NetworkError>>
      getListConversation(ConversationRequest? model);
  Future<Result<BaseResponseObject<List<CommentConversation?>?>, NetworkError>> getListComment(
      CommentRequest? model);
  Future<Result<BaseResponseObject<int?>, NetworkError>> insertNewComment(
      CommentInsertRequest? model);
  Future<Result<BaseResponseObject<int?>, NetworkError>> insertNewConversation(
      ConversationResponse? model);
  Future<Result<BaseResponseObject<int?>, NetworkError>> updateNewConversation(
      ConversationResponse? model);
}
