import 'package:challenge/models/git_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'git_response.g.dart';

@JsonSerializable()
class GitResponse {
  List<GitItem> items;

  GitResponse(this.items);

  factory GitResponse.fromJson(Map<String, dynamic> json) =>
      _$GitResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GitResponseToJson(this);
}
