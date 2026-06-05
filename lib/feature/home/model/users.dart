import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'package:user_log/feature/home/model/address.dart';
import 'package:user_log/feature/home/model/company.dart';

part 'users.g.dart';

List<Users> usersFromJson(String str) => List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class Users {
    @JsonKey(name: "id")
    int id;
    @JsonKey(name: "name")
    String name;
    @JsonKey(name: "username")
    String username;
    @JsonKey(name: "email")
    String email;
    @JsonKey(name: "address")
    Address address;
    @JsonKey(name: "phone")
    String phone;
    @JsonKey(name: "website")
    String website;
    @JsonKey(name: "company")
    Company company;

    Users({
        required this.id,
        required this.name,
        required this.username,
        required this.email,
        required this.address,
        required this.phone,
        required this.website,
        required this.company,
    });

    factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

    Map<String, dynamic> toJson() => _$UsersToJson(this);
}


