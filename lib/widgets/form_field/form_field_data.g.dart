// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_field_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FormFieldData _$$_FormFieldDataFromJson(Map<String, dynamic> json) =>
    _$_FormFieldData(
      type: json['type'] as String?,
      required: json['required'] as bool?,
      label: json['label'] as String?,
      toggle: json['toggle'] as bool?,
      inline: json['inline'] as bool?,
      name: json['name'] as String?,
      access: json['access'] as bool?,
      other: json['other'] as bool?,
      value: json['value'] as String?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => ValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtype: json['subtype'] as String?,
      multiple: json['multiple'] as bool?,
    );

Map<String, dynamic> _$$_FormFieldDataToJson(_$_FormFieldData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'required': instance.required,
      'label': instance.label,
      'toggle': instance.toggle,
      'inline': instance.inline,
      'name': instance.name,
      'access': instance.access,
      'other': instance.other,
      'value': instance.value,
      'values': instance.values,
      'subtype': instance.subtype,
      'multiple': instance.multiple,
    };

_$_ValueModel _$$_ValueModelFromJson(Map<String, dynamic> json) =>
    _$_ValueModel(
      label: json['label'] as String?,
      value: json['value'] as String?,
      selected: json['selected'] as bool?,
    );

Map<String, dynamic> _$$_ValueModelToJson(_$_ValueModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
      'selected': instance.selected,
    };
