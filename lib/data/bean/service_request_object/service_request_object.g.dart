// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_request_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ServiceRequestObject? jsonToNullableServiceRequestObject(Object? json) =>
    ServiceRequestObject.fromJson(json as Map<String, dynamic>);

ServiceRequestObject jsonToServiceRequestObject(Object? json) =>
    ServiceRequestObject.fromJson(json as Map<String, dynamic>);

List<ServiceRequestObject?> jsonToListNullableServiceRequestObjects(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ServiceRequestObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<ServiceRequestObject> jsonToListServiceRequestObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ServiceRequestObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceRequestObject _$$_ServiceRequestObjectFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceRequestObject(
      id: json['id'] as String?,
      idForm: json['idForm'] as String?,
      formname: json['formname'] as String?,
      updateTime: json['updateTime'] == null
          ? null
          : DateTime.parse(json['updateTime'] as String),
      status: json['status'] as int?,
      listForm: (json['listForm'] as List<dynamic>?)
          ?.map((e) => FormFieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServiceRequestObjectToJson(
        _$_ServiceRequestObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idForm': instance.idForm,
      'formname': instance.formname,
      'updateTime': instance.updateTime?.toIso8601String(),
      'status': instance.status,
      'listForm': instance.listForm,
    };
