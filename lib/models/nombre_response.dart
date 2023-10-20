import 'dart:convert';

class NombreResponse {
  List<Map<String, String?>> meals;

  NombreResponse({
    required this.meals,
  });

  factory NombreResponse.fromRawJson(String str) =>
      NombreResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NombreResponse.fromJson(Map<String, dynamic> json) => NombreResponse(
        meals: List<Map<String, String?>>.from(json["meals"].map(
            (x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
      );

  Map<String, dynamic> toJson() => {
        "meals": List<dynamic>.from(meals.map(
            (x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
      };
}
