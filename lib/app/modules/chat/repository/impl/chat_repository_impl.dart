


import 'package:ftu_lms/app/modules/chat/models/all_member_request.dart';
import 'package:ftu_lms/app/modules/chat/models/all_member_response.dart';
import 'package:ftu_lms/app/modules/chat/models/all_message_request.dart';
import 'package:ftu_lms/app/modules/chat/models/all_message_response.dart';
import 'package:ftu_lms/app/modules/chat/models/all_room_request.dart';
import 'package:ftu_lms/app/modules/chat/models/all_room_response.dart';
import 'package:ftu_lms/app/modules/chat/models/create_room_request.dart';
import 'package:ftu_lms/app/modules/chat/models/send_message_request.dart';

import '../../../../../data/remote/clients/chat_client.dart';
import '../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../data/remote/layers/network_executor.dart';
import '../../../../../data/remote/wrappers/network_error.dart';
import '../../../../../data/remote/wrappers/result.dart';
import '../chat_repository.dart';

class ChatRepositoryImpl extends ChatRepository {
  @override
  Future<Result<BaseResponseObject<List<AllRoomResponse?>?>, NetworkError>> getAllRoom(
      AllRoomRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<List<AllRoomResponse?>?>,
        BaseResponseObject<List<AllRoomResponse?>?>>(
        route: ChatClient.getAllRoom(model),
        responseType: const BaseResponseObject<List<AllRoomResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<List<AllMemberResponse?>?>, NetworkError>> getAllMemberInRoom(
      AllMemberRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<List<AllMemberResponse?>?>,
        BaseResponseObject<List<AllMemberResponse?>?>>(
        route: ChatClient.getAllMemberInRoom(model),
        responseType: const BaseResponseObject<List<AllMemberResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<List<AllMessageResponse?>?>, NetworkError>> getAllMessageInRoom(
      AllMessageRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<List<AllMessageResponse?>?>,
        BaseResponseObject<List<AllMessageResponse?>?>>(
        route: ChatClient.getAllMessageInRoom(model),
        responseType: const BaseResponseObject<List<AllMessageResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> createRoom(
      CreateRoomRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<int?>,
        BaseResponseObject<int?>>(
        route: ChatClient.createRoom(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> sendMessage(
      SendMessageRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<int?>,
        BaseResponseObject<int?>>(
        route: ChatClient.sendMessage(model),
        responseType: const BaseResponseObject<int?>());
  }


}