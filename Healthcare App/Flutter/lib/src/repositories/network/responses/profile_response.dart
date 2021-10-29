import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  @JsonKey()
  String username;

  @JsonKey()
  String fullname;

  @JsonKey()
  String email;

  @JsonKey(name: "login_counts")
  int loginCounts;

  ProfileResponse({this.username, this.fullname, this.email,this.loginCounts,});

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}
