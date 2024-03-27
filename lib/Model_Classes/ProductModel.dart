
class ProductModel {
  Data? data;

  ProductModel({this.data});

  ProductModel.fromJson(Map<String, dynamic> json) {
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
  }

  static List<ProductModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => ProductModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }

  ProductModel copyWith({
    Data? data,
  }) => ProductModel(
    data: data ?? this.data,
  );
}

class Data {
  String? id;
  String? name;
  String? slug;
  String? description;
  dynamic variations;
  List<Image2>? image6;
  String? cateId;
  String? brandId;
  int? rating;
  int? price;
  int? stock;
  int? discount;
  bool? isFeatured;
  bool? isDeleted;
  bool? isPublished;
  List<Reviews>? reviews;
  CreatedAt4? createdAt;
  UpdatedAt4? updatedAt;
  String? madeBy;

  Data({this.id, this.name, this.slug, this.description, this.variations, this.image6, this.cateId, this.brandId, this.rating, this.price, this.stock, this.discount, this.isFeatured, this.isDeleted, this.isPublished, this.reviews, this.createdAt, this.updatedAt, this.madeBy});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["slug"] is String) {
      slug = json["slug"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    variations = json["variations"];
    if(json["image"] is List) {
      image6 = json["image"] == null ? null : (json["image"] as List).map((e) => Image2.fromJson(e)).toList();
    }
    if(json["cateId"] is String) {
      cateId = json["cateId"];
    }
    if(json["brandId"] is String) {
      brandId = json["brandId"];
    }
    if(json["rating"] is num) {
      rating = (json["rating"] as num).toInt();
    }
    if(json["price"] is num) {
      price = (json["price"] as num).toInt();
    }
    if(json["stock"] is num) {
      stock = (json["stock"] as num).toInt();
    }
    if(json["discount"] is num) {
      discount = (json["discount"] as num).toInt();
    }
    if(json["isFeatured"] is bool) {
      isFeatured = json["isFeatured"];
    }
    if(json["isDeleted"] is bool) {
      isDeleted = json["isDeleted"];
    }
    if(json["isPublished"] is bool) {
      isPublished = json["isPublished"];
    }
    if(json["reviews"] is List) {
      reviews = json["reviews"] == null ? null : (json["reviews"] as List).map((e) => Reviews.fromJson(e)).toList();
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt4.fromJson(json["createdAt"]);
    }
    if(json["UpdatedAt"] is Map) {
      updatedAt = json["UpdatedAt"] == null ? null : UpdatedAt4.fromJson(json["UpdatedAt"]);
    }
    if(json["madeBy"] is String) {
      madeBy = json["madeBy"];
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Data.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["slug"] = slug;
    _data["description"] = description;
    _data["variations"] = variations;
    if(image6 != null) {
      _data["image"] = image6?.map((e) => e.toJson()).toList();
    }
    _data["cateId"] = cateId;
    _data["brandId"] = brandId;
    _data["rating"] = rating;
    _data["price"] = price;
    _data["stock"] = stock;
    _data["discount"] = discount;
    _data["isFeatured"] = isFeatured;
    _data["isDeleted"] = isDeleted;
    _data["isPublished"] = isPublished;
    if(reviews != null) {
      _data["reviews"] = reviews?.map((e) => e.toJson()).toList();
    }
    if(createdAt != null) {
      _data["createdAt"] = createdAt?.toJson();
    }
    if(updatedAt != null) {
      _data["UpdatedAt"] = updatedAt?.toJson();
    }
    _data["madeBy"] = madeBy;
    return _data;
  }

  Data copyWith({
    String? id,
    String? name,
    String? slug,
    String? description,
    dynamic variations,
    List<Image2>? image7,
    String? cateId,
    String? brandId,
    int? rating,
    int? price,
    int? stock,
    int? discount,
    bool? isFeatured,
    bool? isDeleted,
    bool? isPublished,
    List<Reviews>? reviews,
    CreatedAt4? createdAt,
    UpdatedAt4? updatedAt,
    String? madeBy,
  }) => Data(
    id: id ?? this.id,
    name: name ?? this.name,
    slug: slug ?? this.slug,
    description: description ?? this.description,
    variations: variations ?? this.variations,
    image6: image7 ?? this.image6,
    cateId: cateId ?? this.cateId,
    brandId: brandId ?? this.brandId,
    rating: rating ?? this.rating,
    price: price ?? this.price,
    stock: stock ?? this.stock,
    discount: discount ?? this.discount,
    isFeatured: isFeatured ?? this.isFeatured,
    isDeleted: isDeleted ?? this.isDeleted,
    isPublished: isPublished ?? this.isPublished,
    reviews: reviews ?? this.reviews,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    madeBy: madeBy ?? this.madeBy,
  );
}

class UpdatedAt4 {
  int? t;
  int? i;

  UpdatedAt4({this.t, this.i});

  UpdatedAt4.fromJson(Map<String, dynamic> json) {
    if(json["T"] is num) {
      t = (json["T"] as num).toInt();
    }
    if(json["I"] is num) {
      i = (json["I"] as num).toInt();
    }
  }

  static List<UpdatedAt4> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => UpdatedAt4.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["T"] = t;
    _data["I"] = i;
    return _data;
  }

  UpdatedAt4 copyWith({
    int? t,
    int? i,
  }) => UpdatedAt4(
    t: t ?? this.t,
    i: i ?? this.i,
  );
}

class CreatedAt4 {
  int? t;
  int? i;

  CreatedAt4({this.t, this.i});

  CreatedAt4.fromJson(Map<String, dynamic> json) {
    if(json["T"] is num) {
      t = (json["T"] as num).toInt();
    }
    if(json["I"] is num) {
      i = (json["I"] as num).toInt();
    }
  }

  static List<CreatedAt4> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => CreatedAt4.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["T"] = t;
    _data["I"] = i;
    return _data;
  }

  CreatedAt4 copyWith({
    int? t,
    int? i,
  }) => CreatedAt4(
    t: t ?? this.t,
    i: i ?? this.i,
  );
}

class Reviews {
  String? id;
  String? userId;
  User? user;
  int? rating;
  String? comment;
  CreatedAt3? createdAt;
  UpdatedAt3? updatedAt;

  Reviews({this.id, this.userId, this.user, this.rating, this.comment, this.createdAt, this.updatedAt});

  Reviews.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["user_id"] is String) {
      userId = json["user_id"];
    }
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
    if(json["rating"] is num) {
      rating = (json["rating"] as num).toInt();
    }
    if(json["comment"] is String) {
      comment = json["comment"];
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt3.fromJson(json["createdAt"]);
    }
    if(json["UpdatedAt"] is Map) {
      updatedAt = json["UpdatedAt"] == null ? null : UpdatedAt3.fromJson(json["UpdatedAt"]);
    }
  }

  static List<Reviews> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Reviews.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_id"] = userId;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["rating"] = rating;
    _data["comment"] = comment;
    if(createdAt != null) {
      _data["createdAt"] = createdAt?.toJson();
    }
    if(updatedAt != null) {
      _data["UpdatedAt"] = updatedAt?.toJson();
    }
    return _data;
  }

  Reviews copyWith({
    String? id,
    String? userId,
    User? user,
    int? rating,
    String? comment,
    CreatedAt3? createdAt,
    UpdatedAt3? updatedAt,
  }) => Reviews(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    user: user ?? this.user,
    rating: rating ?? this.rating,
    comment: comment ?? this.comment,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
}

class UpdatedAt3 {
  int? t;
  int? i;

  UpdatedAt3({this.t, this.i});

  UpdatedAt3.fromJson(Map<String, dynamic> json) {
    if(json["T"] is num) {
      t = (json["T"] as num).toInt();
    }
    if(json["I"] is num) {
      i = (json["I"] as num).toInt();
    }
  }

  static List<UpdatedAt3> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => UpdatedAt3.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["T"] = t;
    _data["I"] = i;
    return _data;
  }

  UpdatedAt3 copyWith({
    int? t,
    int? i,
  }) => UpdatedAt3(
    t: t ?? this.t,
    i: i ?? this.i,
  );
}

class CreatedAt3 {
  int? t;
  int? i;

  CreatedAt3({this.t, this.i});

  CreatedAt3.fromJson(Map<String, dynamic> json) {
    if(json["T"] is num) {
      t = (json["T"] as num).toInt();
    }
    if(json["I"] is num) {
      i = (json["I"] as num).toInt();
    }
  }

  static List<CreatedAt3> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => CreatedAt3.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["T"] = t;
    _data["I"] = i;
    return _data;
  }

  CreatedAt3 copyWith({
    int? t,
    int? i,
  }) => CreatedAt3(
    t: t ?? this.t,
    i: i ?? this.i,
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
  List<DeliveryAddresses>? deliveryAddresses;
  Image1? image4;
  String? refreshToken;
  CreatedAt2? createdAt;
  UpdatedAt2? updatedAt;

  User({this.id, this.username, this.email, this.password, this.phone, this.role, this.blocked, this.seller, this.deliveryAddresses, this.image4, this.refreshToken, this.createdAt, this.updatedAt});

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
      deliveryAddresses = json["deliveryAddresses"] == null ? null : (json["deliveryAddresses"] as List).map((e) => DeliveryAddresses.fromJson(e)).toList();
    }
    if(json["image"] is Map) {
      image4 = json["image"] == null ? null : Image1.fromJson(json["image"]);
    }
    if(json["refreshToken"] is String) {
      refreshToken = json["refreshToken"];
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt2.fromJson(json["createdAt"]);
    }
    if(json["UpdatedAt"] is Map) {
      updatedAt = json["UpdatedAt"] == null ? null : UpdatedAt2.fromJson(json["UpdatedAt"]);
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
      _data["deliveryAddresses"] = deliveryAddresses?.map((e) => e.toJson()).toList();
    }
    if(image4 != null) {
      _data["image"] = image4?.toJson();
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
    List<DeliveryAddresses>? deliveryAddresses,
    Image1? image5,
    String? refreshToken,
    CreatedAt2? createdAt,
    UpdatedAt2? updatedAt,
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
    image4: image5 ?? this.image4,
    refreshToken: refreshToken ?? this.refreshToken,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
}

class UpdatedAt2 {
  int? t;
  int? i;

  UpdatedAt2({this.t, this.i});

  UpdatedAt2.fromJson(Map<String, dynamic> json) {
    if(json["T"] is num) {
      t = (json["T"] as num).toInt();
    }
    if(json["I"] is num) {
      i = (json["I"] as num).toInt();
    }
  }

  static List<UpdatedAt2> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => UpdatedAt2.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["T"] = t;
    _data["I"] = i;
    return _data;
  }

  UpdatedAt2 copyWith({
    int? t,
    int? i,
  }) => UpdatedAt2(
    t: t ?? this.t,
    i: i ?? this.i,
  );
}

class CreatedAt2 {
  int? t;
  int? i;

  CreatedAt2({this.t, this.i});

  CreatedAt2.fromJson(Map<String, dynamic> json) {
    if(json["T"] is num) {
      t = (json["T"] as num).toInt();
    }
    if(json["I"] is num) {
      i = (json["I"] as num).toInt();
    }
  }

  static List<CreatedAt2> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => CreatedAt2.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["T"] = t;
    _data["I"] = i;
    return _data;
  }

  CreatedAt2 copyWith({
    int? t,
    int? i,
  }) => CreatedAt2(
    t: t ?? this.t,
    i: i ?? this.i,
  );
}

class Image1 {
  String? name;
  String? url;

  Image1({this.name, this.url});

  Image1.fromJson(Map<String, dynamic> json) {
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<Image1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Image1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }

  Image1 copyWith({
    String? name,
    String? url,
  }) => Image1(
    name: name ?? this.name,
    url: url ?? this.url,
  );
}

class DeliveryAddresses {
  String? id;
  String? fullName;
  List<String>? phoneNumbers;
  String? pincode;
  String? state;
  String? city;
  String? houseOrBuildingNumber;
  String? roadNameOrArea;
  String? landmark;
  String? type;
  CreatedAt1? createdAt;
  UpdatedAt1? updatedAt;

  DeliveryAddresses({this.id, this.fullName, this.phoneNumbers, this.pincode, this.state, this.city, this.houseOrBuildingNumber, this.roadNameOrArea, this.landmark, this.type, this.createdAt, this.updatedAt});

  DeliveryAddresses.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["fullName"] is String) {
      fullName = json["fullName"];
    }
    if(json["phone_numbers"] is List) {
      phoneNumbers = json["phone_numbers"] == null ? null : List<String>.from(json["phone_numbers"]);
    }
    if(json["pincode"] is String) {
      pincode = json["pincode"];
    }
    if(json["state"] is String) {
      state = json["state"];
    }
    if(json["city"] is String) {
      city = json["city"];
    }
    if(json["houseOrBuildingNumber"] is String) {
      houseOrBuildingNumber = json["houseOrBuildingNumber"];
    }
    if(json["roadNameOrArea"] is String) {
      roadNameOrArea = json["roadNameOrArea"];
    }
    if(json["landmark"] is String) {
      landmark = json["landmark"];
    }
    if(json["type"] is String) {
      type = json["type"];
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt1.fromJson(json["createdAt"]);
    }
    if(json["updatedAt"] is Map) {
      updatedAt = json["updatedAt"] == null ? null : UpdatedAt1.fromJson(json["updatedAt"]);
    }
  }

  static List<DeliveryAddresses> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DeliveryAddresses.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["fullName"] = fullName;
    if(phoneNumbers != null) {
      _data["phone_numbers"] = phoneNumbers;
    }
    _data["pincode"] = pincode;
    _data["state"] = state;
    _data["city"] = city;
    _data["houseOrBuildingNumber"] = houseOrBuildingNumber;
    _data["roadNameOrArea"] = roadNameOrArea;
    _data["landmark"] = landmark;
    _data["type"] = type;
    if(createdAt != null) {
      _data["createdAt"] = createdAt?.toJson();
    }
    if(updatedAt != null) {
      _data["updatedAt"] = updatedAt?.toJson();
    }
    return _data;
  }

  DeliveryAddresses copyWith({
    String? id,
    String? fullName,
    List<String>? phoneNumbers,
    String? pincode,
    String? state,
    String? city,
    String? houseOrBuildingNumber,
    String? roadNameOrArea,
    String? landmark,
    String? type,
    CreatedAt1? createdAt,
    UpdatedAt1? updatedAt,
  }) => DeliveryAddresses(
    id: id ?? this.id,
    fullName: fullName ?? this.fullName,
    phoneNumbers: phoneNumbers ?? this.phoneNumbers,
    pincode: pincode ?? this.pincode,
    state: state ?? this.state,
    city: city ?? this.city,
    houseOrBuildingNumber: houseOrBuildingNumber ?? this.houseOrBuildingNumber,
    roadNameOrArea: roadNameOrArea ?? this.roadNameOrArea,
    landmark: landmark ?? this.landmark,
    type: type ?? this.type,
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

class Image2 {
  String? name;
  String? url;

  Image2({this.name, this.url});

  Image2.fromJson(Map<String, dynamic> json) {
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<Image2> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Image2.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }

  Image2 copyWith({
    String? name,
    String? url,
  }) => Image2(
    name: name ?? this.name,
    url: url ?? this.url,
  );
}