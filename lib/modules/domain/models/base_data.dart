import 'package:json_annotation/json_annotation.dart';

part 'base_data.g.dart';

@JsonSerializable()
class BaseData {
  BaseData({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<dynamic>? data;
  Support? support;

  factory BaseData.fromJson(Map<String, dynamic> json) => _$BaseDataFromJson(json);

  Map<String, dynamic> toJson() => _$BaseDataToJson(this);
}

class Support {
  Support({
    this.url,
    this.text,
  });

  String? url;
  String? text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
