
class LogInModel {
  Tokens? tokens;
  User? user;

  LogInModel({this.tokens, this.user});

  LogInModel.fromJson(Map<String, dynamic> json) {
    if(json["tokens"] is Map) {
      tokens = json["tokens"] == null ? null : Tokens.fromJson(json["tokens"]);
    }
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
  }

  static List<LogInModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => LogInModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(tokens != null) {
      _data["tokens"] = tokens?.toJson();
    }
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }

  LogInModel copyWith({
    Tokens? tokens,
    User? user,
  }) => LogInModel(
    tokens: tokens ?? this.tokens,
    user: user ?? this.user,
  );
}

class User {
  String? id;
  String? username;
  String? email;
  String? password;
  String? phone;
  int? role;
  bool? blocked;
  Seller? seller;
  List<dynamic>? deliveryAddresses;
  Image? image;
  String? refreshToken;
  CreatedAt1? createdAt;
  UpdatedAt1? updatedAt;

  User({this.id, this.username, this.email, this.password, this.phone, this.role, this.blocked, this.seller, this.deliveryAddresses, this.image, this.refreshToken, this.createdAt, this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["phone"] is String) {
      phone = json["phone"];
    }
    if(json["role"] is num) {
      role = (json["role"] as num).toInt();
    }
    if(json["blocked"] is bool) {
      blocked = json["blocked"];
    }
    if(json["seller"] is Map) {
      seller = json["seller"] == null ? null : Seller.fromJson(json["seller"]);
    }
    if(json["deliveryAddresses"] is List) {
      deliveryAddresses = json["deliveryAddresses"] ?? [];
    }
    if(json["image"] is Map) {
      image = json["image"] == null ? null : Image.fromJson(json["image"]);
    }
    if(json["refreshToken"] is String) {
      refreshToken = json["refreshToken"];
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt1.fromJson(json["createdAt"]);
    }
    if(json["UpdatedAt"] is Map) {
      updatedAt = json["UpdatedAt"] == null ? null : UpdatedAt1.fromJson(json["UpdatedAt"]);
    }
  }

  static List<User> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => User.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["username"] = username;
    _data["email"] = email;
    _data["password"] = password;
    _data["phone"] = phone;
    _data["role"] = role;
    _data["blocked"] = blocked;
    if(seller != null) {
      _data["seller"] = seller?.toJson();
    }
    if(deliveryAddresses != null) {
      _data["deliveryAddresses"] = deliveryAddresses;
    }
    if(image != null) {
      _data["image"] = image?.toJson();
    }
    _data["refreshToken"] = refreshToken;
    if(createdAt != null) {
      _data["createdAt"] = createdAt?.toJson();
    }
    if(updatedAt != null) {
      _data["UpdatedAt"] = updatedAt?.toJson();
    }
    return _data;
  }

  User copyWith({
    String? id,
    String? username,
    String? email,
    String? password,
    String? phone,
    int? role,
    bool? blocked,
    Seller? seller,
    List<dynamic>? deliveryAddresses,
    Image? image,
    String? refreshToken,
    CreatedAt1? createdAt,
    UpdatedAt1? updatedAt,
  }) => User(
    id: id ?? this.id,
    username: username ?? this.username,
    email: email ?? this.email,
    password: password ?? this.password,
    phone: phone ?? this.phone,
    role: role ?? this.role,
    blocked: blocked ?? this.blocked,
    seller: seller ?? this.seller,
    deliveryAddresses: deliveryAddresses ?? this.deliveryAddresses,
    image: image ?? this.image,
    refreshToken: refreshToken ?? this.refreshToken,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
}

class UpdatedAt1 {
  int? t;
  int? i;

  UpdatedAt1({this.t, this.i});

  UpdatedAt1.fromJson(Map<String, dynamic> json) {
    if(json["T"] is num) {
      t = (json["T"] as num).toInt();
    }
    if(json["I"] is num) {
      i = (json["I"] as num).toInt();
    }
  }

  static List<UpdatedAt1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => UpdatedAt1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["T"] = t;
    _data["I"] = i;
    return _data;
  }

  UpdatedAt1 copyWith({
    int? t,
    int? i,
  }) => UpdatedAt1(
    t: t ?? this.t,
    i: i ?? this.i,
  );
}

class CreatedAt1 {
  int? t;
  int? i;

  CreatedAt1({this.t, this.i});

  CreatedAt1.fromJson(Map<String, dynamic> json) {
    if(json["T"] is num) {
      t = (json["T"] as num).toInt();
    }
    if(json["I"] is num) {
      i = (json["I"] as num).toInt();
    }
  }

  static List<CreatedAt1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => CreatedAt1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["T"] = t;
    _data["I"] = i;
    return _data;
  }

  CreatedAt1 copyWith({
    int? t,
    int? i,
  }) => CreatedAt1(
    t: t ?? this.t,
    i: i ?? this.i,
  );
}

class Image {
  String? name;
  String? url;

  Image({this.name, this.url});

  Image.fromJson(Map<String, dynamic> json) {
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<Image> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Image.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }

  Image copyWith({
    String? name,
    String? url,
  }) => Image(
    name: name ?? this.name,
    url: url ?? this.url,
  );
}

class Seller {
  String? shopname;
  String? phoneNumber;
  String? aadhaarNumber;
  String? collegename;
  String? course;
  String? academicyear;
  String? pin;
  String? admissionnumber;
  IdProof? idProof;
  String? status;
  CreatedAt? createdAt;
  UpdatedAt? updatedAt;

  Seller({this.shopname, this.phoneNumber, this.aadhaarNumber, this.collegename, this.course, this.academicyear, this.pin, this.admissionnumber, this.idProof, this.status, this.createdAt, this.updatedAt});

  Seller.fromJson(Map<String, dynamic> json) {
    if(json["shopname"] is String) {
      shopname = json["shopname"];
    }
    if(json["phone_number"] is String) {
      phoneNumber = json["phone_number"];
    }
    if(json["aadhaarNumber"] is String) {
      aadhaarNumber = json["aadhaarNumber"];
    }
    if(json["collegename"] is String) {
      collegename = json["collegename"];
    }
    if(json["course"] is String) {
      course = json["course"];
    }
    if(json["academicyear"] is String) {
      academicyear = json["academicyear"];
    }
    if(json["pin"] is String) {
      pin = json["pin"];
    }
    if(json["admissionnumber"] is String) {
      admissionnumber = json["admissionnumber"];
    }
    if(json["idProof"] is Map) {
      idProof = json["idProof"] == null ? null : IdProof.fromJson(json["idProof"]);
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt.fromJson(json["createdAt"]);
    }
    if(json["updatedAt"] is Map) {
      updatedAt = json["updatedAt"] == null ? null : UpdatedAt.fromJson(json["updatedAt"]);
    }
  }

  static List<Seller> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Seller.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["shopname"] = shopname;
    _data["phone_number"] = phoneNumber;
    _data["aadhaarNumber"] = aadhaarNumber;
    _data["collegename"] = collegename;
    _data["course"] = course;
    _data["academicyear"] = academicyear;
    _data["pin"] = pin;
    _data["admissionnumber"] = admissionnumber;
    if(idProof != null) {
      _data["idProof"] = idProof?.toJson();
    }
    _data["status"] = status;
    if(createdAt != null) {
      _data["createdAt"] = createdAt?.toJson();
    }
    if(updatedAt != null) {
      _data["updatedAt"] = updatedAt?.toJson();
    }
    return _data;
  }

  Seller copyWith({
    String? shopname,
    String? phoneNumber,
    String? aadhaarNumber,
    String? collegename,
    String? course,
    String? academicyear,
    String? pin,
    String? admissionnumber,
    IdProof? idProof,
    String? status,
    CreatedAt? createdAt,
    UpdatedAt? updatedAt,
  }) => Seller(
    shopname: shopname ?? this.shopname,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    aadhaarNumber: aadhaarNumber ?? this.aadhaarNumber,
    collegename: collegename ?? this.collegename,
    course: course ?? this.course,
    academicyear: academicyear ?? this.academicyear,
    pin: pin ?? this.pin,
    admissionnumber: admissionnumber ?? this.admissionnumber,
    idProof: idProof ?? this.idProof,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
}

class UpdatedAt {
  int? t;
  int? i;

  UpdatedAt({this.t, this.i});

  UpdatedAt.fromJson(Map<String, dynamic> json) {
    if(json["T"] is num) {
      t = (json["T"] as num).toInt();
    }
    if(json["I"] is num) {
      i = (json["I"] as num).toInt();
    }
  }

  static List<UpdatedAt> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => UpdatedAt.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["T"] = t;
    _data["I"] = i;
    return _data;
  }

  UpdatedAt copyWith({
    int? t,
    int? i,
  }) => UpdatedAt(
    t: t ?? this.t,
    i: i ?? this.i,
  );
}

class CreatedAt {
  int? t;
  int? i;

  CreatedAt({this.t, this.i});

  CreatedAt.fromJson(Map<String, dynamic> json) {
    if(json["T"] is num) {
      t = (json["T"] as num).toInt();
    }
    if(json["I"] is num) {
      i = (json["I"] as num).toInt();
    }
  }

  static List<CreatedAt> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => CreatedAt.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["T"] = t;
    _data["I"] = i;
    return _data;
  }

  CreatedAt copyWith({
    int? t,
    int? i,
  }) => CreatedAt(
    t: t ?? this.t,
    i: i ?? this.i,
  );
}

class IdProof {
  String? name;
  String? url;

  IdProof({this.name, this.url});

  IdProof.fromJson(Map<String, dynamic> json) {
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<IdProof> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => IdProof.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }

  IdProof copyWith({
    String? name,
    String? url,
  }) => IdProof(
    name: name ?? this.name,
    url: url ?? this.url,
  );
}

class Tokens {
  String? accessToken;
  String? refreshToken;

  Tokens({this.accessToken, this.refreshToken});

  Tokens.fromJson(Map<String, dynamic> json) {
    if(json["access_token"] is String) {
      accessToken = json["access_token"];
    }
    if(json["refresh_token"] is String) {
      refreshToken = json["refresh_token"];
    }
  }

  static List<Tokens> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Tokens.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["refresh_token"] = refreshToken;
    return _data;
  }

  Tokens copyWith({
    String? accessToken,
    String? refreshToken,
  }) => Tokens(
    accessToken: accessToken ?? this.accessToken,
    refreshToken: refreshToken ?? this.refreshToken,
  );
}