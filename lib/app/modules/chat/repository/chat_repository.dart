





import 'package:ftu_lms/app/modules/chat/models/all_member_request.dart';
import 'package:ftu_lms/app/modules/chat/models/all_member_response.dart';
import 'package:ftu_lms/app/modules/chat/models/all_message_request.dart';
import 'package:ftu_lms/app/modules/chat/models/all_message_response.dart';
import 'package:ftu_lms/app/modules/chat/models/all_room_request.dart';
import 'package:ftu_lms/app/modules/chat/models/all_room_response.dart';
import 'package:ftu_lms/app/modules/chat/models/create_room_request.dart';
import 'package:ftu_lms/app/modules/chat/models/send_message_request.dart';

import '../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../data/remote/wrappers/network_error.dart';
import '../../../../data/remote/wrappers/result.dart';

abstract class ChatRepository {
  Future<Result<BaseResponseObject<List<AllRoomResponse?>?>, NetworkError>> getAllRoom(
      AllRoomRequest? model  );

  Future<Result<BaseResponseObject<List<AllMemberResponse?>?>, NetworkError>> getAllMemberInRoom(
      AllMemberRequest? model  );

  Future<Result<BaseResponseObject<List<AllMessageResponse?>?>, NetworkError>> getAllMessageInRoom(
      AllMessageRequest? model  );

  Future<Result<BaseResponseObject<int?>, NetworkError>> createRoom(
      CreateRoomRequest? model  );

  Future<Result<BaseResponseObject<int?>, NetworkError>> sendMessage(
      SendMessageRequest? model  );
}