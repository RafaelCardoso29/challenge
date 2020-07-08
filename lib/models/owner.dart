import 'package:json_annotation/json_annotation.dart';
part 'owner.g.dart';

@JsonSerializable()
class Owner {
  String login;
  @JsonKey(name: "avatar_url")
  String avatarUrl;
  @JsonKey(name: "html_url")
  String profileUrl;

  Owner({this.login, this.avatarUrl, this.profileUrl});

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
