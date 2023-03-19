import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(disallowUnrecognizedKeys: true)
class User {
  User({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
    this.like = false,
  });

  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "first_name")
  String? firstName;
  @JsonKey(name: "last_name")
  String? lastName;
  @JsonKey(name: "avatar")
  String? avatar;

  bool like;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
