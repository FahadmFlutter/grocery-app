class SignUpModel {
  SignUpModel({
      this.id, 
      this.message,});

  SignUpModel.fromJson(dynamic json) {
    id = json['id'];
    message = json['message'];
  }
  String? id;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['message'] = message;
    return map;
  }

}