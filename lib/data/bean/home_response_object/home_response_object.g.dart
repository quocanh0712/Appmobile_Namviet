// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeResponseObjectImpl _$$HomeResponseObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeResponseObjectImpl(
      homeRecentTasks: (json['listnowtask'] as List<dynamic>?)
          ?.map((e) => HomeRecentTask.fromJson(e as Map<String, dynamic>))
          .toList(),
      homeRecentActitvities: (json['listrecentlyactitvity'] as List<dynamic>?)
          ?.map((e) => HomeRecentActitvity.fromJson(e as Map<String, dynamic>))
          .toList(),
      homeNewActivities: (json['listNewActivity'] as List<dynamic>?)
          ?.map((e) => HomeNewActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
      homeOutstandingActitvities:
          (json['listoutstandingactitvity'] as List<dynamic>?)
              ?.map((e) =>
                  HomeOutstandingActitvity.fromJson(e as Map<String, dynamic>))
              .toList(),
      homeBannerUrls: (json['listurlbanner'] as List<dynamic>?)
          ?.map((e) => HomeBannerUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeResponseObjectImplToJson(
        _$HomeResponseObjectImpl instance) =>
    <String, dynamic>{
      'listnowtask': instance.homeRecentTasks,
      'listrecentlyactitvity': instance.homeRecentActitvities,
      'listNewActivity': instance.homeNewActivities,
      'listoutstandingactitvity': instance.homeOutstandingActitvities,
      'listurlbanner': instance.homeBannerUrls,
    };
