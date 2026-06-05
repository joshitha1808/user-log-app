import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'company.g.dart';

@JsonSerializable()
class Company {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "catchPhrase")
  String catchPhrase;
  @JsonKey(name: "bs")
  String bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
