
class AddtoCartModel {
  String? message;

  AddtoCartModel({this.message});

  AddtoCartModel.fromJson(Map<String, dynamic> json) {
    if(json["message"] is String) {
      message = json["message"];
    }
  }

  static List<AddtoCartModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => AddtoCartModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["message"] = message;
    return _data;
  }

  AddtoCartModel copyWith({
    String? message,
  }) => AddtoCartModel(
    message: message ?? this.message,
  );
}