// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitItem _$GitItemFromJson(Map<String, dynamic> json) {
  return GitItem(
    id: json['id'] as int,
    name: json['name'] as String,
    fullName: json['full_name'] as String,
    description: json['description'] as String,
    url: json['url'] as String,
    stars: json['stargazers_count'] as int,
    createdAt: json['created_at'] as String,
    watchers: json['watchers'] as int,
    owner: json['owner'] == null
        ? null
        : Owner.fromJson(json['owner'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GitItemToJson(GitItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'description': instance.description,
      'url': instance.url,
      'created_at': instance.createdAt,
      'stargazers_count': instance.stars,
      'watchers': instance.watchers,
      'owner': instance.owner,
    };
