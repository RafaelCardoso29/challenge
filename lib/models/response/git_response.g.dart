// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitResponse _$GitResponseFromJson(Map<String, dynamic> json) {
  return GitResponse(
    (json['items'] as List)
        ?.map((e) =>
            e == null ? null : GitItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GitResponseToJson(GitResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
