import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'package:user_log/feature/home/model/geo.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  @JsonKey(name: "street")
  String street;
  @JsonKey(name: "suite")
  String suite;
  @JsonKey(name: "city")
  String city;
  @JsonKey(name: "zipcode")
  String zipcode;
  @JsonKey(name: "geo")
  Geo geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
