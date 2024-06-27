


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/chat/models/all_member_request.dart';
import 'package:ftu_lms/app/modules/chat/models/all_message_request.dart';
import 'package:ftu_lms/app/modules/chat/models/all_room_request.dart';
import 'package:ftu_lms/app/modules/chat/models/create_room_request.dart';
import 'package:ftu_lms/app/modules/chat/models/send_message_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import '../interfaces/base_client_generator.dart';
part 'chat_client.freezed.dart';

@freezed
class ChatClient extends BaseClientGenerator with _$ChatClient {
  ChatClient._() : super();

  factory ChatClient.getAllRoom(AllRoomRequest? model) = _AllRoom;
  factory ChatClient.getAllMemberInRoom(AllMemberRequest? model) = _AllMemberInRoom;
  factory ChatClient.getAllMessageInRoom(AllMessageRequest? model) = _AllMessageInRoom;
  factory ChatClient.createRoom(CreateRoomRequest? model) = _CreateRoom;
  factory ChatClient.sendMessage(SendMessageRequest? model) = _SendMessage;

  @override
  String get baseURL => '${super.baseURL}/ChatBox';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        getAllRoom: (model) => model?.toJson() ?? {},
        getAllMemberInRoom: (model) => model?.toJson() ?? {},
        getAllMessageInRoom: (model) => model?.toJson() ?? {},
        createRoom: (model) => model?.toJson() ?? {},
        sendMessage: (model) => model?.toJson() ?? {},
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
      getAllRoom: (model) => '/AllRoom',
      getAllMemberInRoom: (model) => '/AllMember',
      getAllMessageInRoom: (model) => '/AllMessage',
      createRoom: (model) => '/CreateRoom',
      sendMessage: (model) => '/Send',
      orElse: () => '',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}