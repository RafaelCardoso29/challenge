import 'package:challenge/models/owner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'git_item.g.dart';

@JsonSerializable()
class GitItem {
  int id;
  String name;
  @JsonKey(name: "full_name")
  String fullName;
  String description;
  String url;
  @JsonKey(name: "created_at")
  String createdAt;
  @JsonKey(name: "stargazers_count")
  int stars;
  int watchers;
  Owner owner;

  GitItem({
    this.id,
    this.name,
    this.fullName,
    this.description,
    this.url,
    this.stars,
    this.createdAt,
    this.watchers,
    this.owner,
  });

  factory GitItem.fromJson(Map<String, dynamic> json) =>
      _$GitItemFromJson(json);
  Map<String, dynamic> toJson() => _$GitItemToJson(this);
}
