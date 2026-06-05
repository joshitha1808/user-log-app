import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'geo.g.dart';

@JsonSerializable()
class Geo {
  @JsonKey(name: "lat")
  String lat;
  @JsonKey(name: "lng")
  String lng;

  Geo({required this.lat, required this.lng});

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

  Map<String, dynamic> toJson() => _$GeoToJson(this);
}
