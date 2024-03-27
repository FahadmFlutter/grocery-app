
class CartModel {
  List<Data>? data;

  CartModel({this.data});

  CartModel.fromJson(Map<String, dynamic> json) {
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
  }

  static List<CartModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => CartModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }

  CartModel copyWith({
    List<Data>? data,
  }) => CartModel(
    data: data ?? this.data,
  );
}

class Data {
  String? id;
  List<CartProducts>? cartProducts;
  int? totalPrice;
  String? userId;

  Data({this.id, this.cartProducts, this.totalPrice, this.userId});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["cart_products"] is List) {
      cartProducts = json["cart_products"] == null ? null : (json["cart_products"] as List).map((e) => CartProducts.fromJson(e)).toList();
    }
    if(json["total_price"] is num) {
      totalPrice = (json["total_price"] as num).toInt();
    }
    if(json["user_id"] is String) {
      userId = json["user_id"];
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Data.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    if(cartProducts != null) {
      _data["cart_products"] = cartProducts?.map((e) => e.toJson()).toList();
    }
    _data["total_price"] = totalPrice;
    _data["user_id"] = userId;
    return _data;
  }

  Data copyWith({
    String? id,
    List<CartProducts>? cartProducts,
    int? totalPrice,
    String? userId,
  }) => Data(
    id: id ?? this.id,
    cartProducts: cartProducts ?? this.cartProducts,
    totalPrice: totalPrice ?? this.totalPrice,
    userId: userId ?? this.userId,
  );
}

class CartProducts {
  String? id;
  int? price;
  Product? product;
  String? productId;
  int? quantity;

  CartProducts({this.id, this.price, this.product, this.productId, this.quantity});

  CartProducts.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["price"] is num) {
      price = (json["price"] as num).toInt();
    }
    if(json["product"] is Map) {
      product = json["product"] == null ? null : Product.fromJson(json["product"]);
    }
    if(json["product_id"] is String) {
      productId = json["product_id"];
    }
    if(json["quantity"] is num) {
      quantity = (json["quantity"] as num).toInt();
    }
  }

  static List<CartProducts> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => CartProducts.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["price"] = price;
    if(product != null) {
      _data["product"] = product?.toJson();
    }
    _data["product_id"] = productId;
    _data["quantity"] = quantity;
    return _data;
  }

  CartProducts copyWith({
    String? id,
    int? price,
    Product? product,
    String? productId,
    int? quantity,
  }) => CartProducts(
    id: id ?? this.id,
    price: price ?? this.price,
    product: product ?? this.product,
    productId: productId ?? this.productId,
    quantity: quantity ?? this.quantity,
  );
}

class Product {
  String? id;
  String? brandId;
  String? cateId;
  CreatedAt? createdAt;
  String? description;
  int? discount;
  List<Image0>? image3;
  bool? isDeleted;
  bool? isFeatured;
  bool? isPublished;
  String? madeBy;
  String? name;
  int? price;
  int? rating;
  List<Reviews>? reviews;
  String? slug;
  int? stock;
  UpdatedAt4? updatedAt;
  dynamic variations;

  Product({this.id, this.brandId, this.cateId, this.createdAt, this.description, this.discount, this.image3, this.isDeleted, this.isFeatured, this.isPublished, this.madeBy, this.name, this.price, this.rating, this.reviews, this.slug, this.stock, this.updatedAt, this.variations});

  Product.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["brandId"] is String) {
      brandId = json["brandId"];
    }
    if(json["cateId"] is String) {
      cateId = json["cateId"];
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt.fromJson(json["createdAt"]);
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["discount"] is num) {
      discount = (json["discount"] as num).toInt();
    }
    if(json["image"] is List) {
      image3 = json["image"] == null ? null : (json["image"] as List).map((e) => Image0.fromJson(e)).toList();
    }
    if(json["isDeleted"] is bool) {
      isDeleted = json["isDeleted"];
    }
    if(json["isFeatured"] is bool) {
      isFeatured = json["isFeatured"];
    }
    if(json["isPublished"] is bool) {
      isPublished = json["isPublished"];
    }
    if(json["madeBy"] is String) {
      madeBy = json["madeBy"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["price"] is num) {
      price = (json["price"] as num).toInt();
    }
    if(json["rating"] is num) {
      rating = (json["rating"] as num).toInt();
    }
    if(json["reviews"] is List) {
      reviews = json["reviews"] == null ? null : (json["reviews"] as List).map((e) => Reviews.fromJson(e)).toList();
    }
    if(json["slug"] is String) {
      slug = json["slug"];
    }
    if(json["stock"] is num) {
      stock = (json["stock"] as num).toInt();
    }
    if(json["updatedAt"] is Map) {
      updatedAt = json["updatedAt"] == null ? null : UpdatedAt4.fromJson(json["updatedAt"]);
    }
    variations = json["variations"];
  }

  static List<Product> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Product.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["brandId"] = brandId;
    _data["cateId"] = cateId;
    if(createdAt != null) {
      _data["createdAt"] = createdAt?.toJson();
    }
    _data["description"] = description;
    _data["discount"] = discount;
    if(image3 != null) {
      _data["image"] = image3?.map((e) => e.toJson()).toList();
    }
    _data["isDeleted"] = isDeleted;
    _data["isFeatured"] = isFeatured;
    _data["isPublished"] = isPublished;
    _data["madeBy"] = madeBy;
    _data["name"] = name;
    _data["price"] = price;
    _data["rating"] = rating;
    if(reviews != null) {
      _data["reviews"] = reviews?.map((e) => e.toJson()).toList();
    }
    _data["slug"] = slug;
    _data["stock"] = stock;
    if(updatedAt != null) {
      _data["updatedAt"] = updatedAt?.toJson();
    }
    _data["variations"] = variations;
    return _data;
  }

  Product copyWith({
    String? id,
    String? brandId,
    String? cateId,
    CreatedAt? createdAt,
    String? description,
    int? discount,
    List<Image0>? image11,
    bool? isDeleted,
    bool? isFeatured,
    bool? isPublished,
    String? madeBy,
    String? name,
    int? price,
    int? rating,
    List<Reviews>? reviews,
    String? slug,
    int? stock,
    UpdatedAt4? updatedAt,
    dynamic variations,
  }) => Product(
    id: id ?? this.id,
    brandId: brandId ?? this.brandId,
    cateId: cateId ?? this.cateId,
    createdAt: createdAt ?? this.createdAt,
    description: description ?? this.description,
    discount: discount ?? this.discount,
    image3: image11 ?? this.image3,
    isDeleted: isDeleted ?? this.isDeleted,
    isFeatured: isFeatured ?? this.isFeatured,
    isPublished: isPublished ?? this.isPublished,
    madeBy: madeBy ?? this.madeBy,
    name: name ?? this.name,
    price: price ?? this.price,
    rating: rating ?? this.rating,
    reviews: reviews ?? this.reviews,
    slug: slug ?? this.slug,
    stock: stock ?? this.stock,
    updatedAt: updatedAt ?? this.updatedAt,
    variations: variations ?? this.variations,
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

class Reviews {
  String? id;
  String? comment;
  CreatedAt1? createdAt;
  int? rating;
  UpdatedAt? updatedAt;
  User? user;
  String? userId;

  Reviews({this.id, this.comment, this.createdAt, this.rating, this.updatedAt, this.user, this.userId});

  Reviews.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["comment"] is String) {
      comment = json["comment"];
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt1.fromJson(json["createdAt"]);
    }
    if(json["rating"] is num) {
      rating = (json["rating"] as num).toInt();
    }
    if(json["updatedAt"] is Map) {
      updatedAt = json["updatedAt"] == null ? null : UpdatedAt.fromJson(json["updatedAt"]);
    }
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
    if(json["user_id"] is String) {
      userId = json["user_id"];
    }
  }

  static List<Reviews> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Reviews.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["comment"] = comment;
    if(createdAt != null) {
      _data["createdAt"] = createdAt?.toJson();
    }
    _data["rating"] = rating;
    if(updatedAt != null) {
      _data["updatedAt"] = updatedAt?.toJson();
    }
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["user_id"] = userId;
    return _data;
  }

  Reviews copyWith({
    String? id,
    String? comment,
    CreatedAt1? createdAt,
    int? rating,
    UpdatedAt? updatedAt,
    User? user,
    String? userId,
  }) => Reviews(
    id: id ?? this.id,
    comment: comment ?? this.comment,
    createdAt: createdAt ?? this.createdAt,
    rating: rating ?? this.rating,
    updatedAt: updatedAt ?? this.updatedAt,
    user: user ?? this.user,
    userId: userId ?? this.userId,
  );
}

class User {
  String? id;
  bool? blocked;
  CreatedAt2? createdAt;
  List<DeliveryAddresses>? deliveryAddresses;
  String? email;
  Image1? image12;
  String? password;
  String? phone;
  String? refreshToken;
  int? role;
  Seller? seller;
  UpdatedAt3? updatedAt;
  String? username;

  User({this.id, this.blocked, this.createdAt, this.deliveryAddresses, this.email, this.image12, this.password, this.phone, this.refreshToken, this.role, this.seller, this.updatedAt, this.username});

  User.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["blocked"] is bool) {
      blocked = json["blocked"];
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt2.fromJson(json["createdAt"]);
    }
    if(json["deliveryAddresses"] is List) {
      deliveryAddresses = json["deliveryAddresses"] == null ? null : (json["deliveryAddresses"] as List).map((e) => DeliveryAddresses.fromJson(e)).toList();
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["image"] is Map) {
      image12 = json["image"] == null ? null : Image1.fromJson(json["image"]);
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["phone"] is String) {
      phone = json["phone"];
    }
    if(json["refreshToken"] is String) {
      refreshToken = json["refreshToken"];
    }
    if(json["role"] is num) {
      role = (json["role"] as num).toInt();
    }
    if(json["seller"] is Map) {
      seller = json["seller"] == null ? null : Seller.fromJson(json["seller"]);
    }
    if(json["updatedAt"] is Map) {
      updatedAt = json["updatedAt"] == null ? null : UpdatedAt3.fromJson(json["updatedAt"]);
    }
    if(json["username"] is String) {
      username = json["username"];
    }
  }

  static List<User> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => User.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["blocked"] = blocked;
    if(createdAt != null) {
      _data["createdAt"] = createdAt?.toJson();
    }
    if(deliveryAddresses != null) {
      _data["deliveryAddresses"] = deliveryAddresses?.map((e) => e.toJson()).toList();
    }
    _data["email"] = email;
    if(image12 != null) {
      _data["image"] = image12?.toJson();
    }
    _data["password"] = password;
    _data["phone"] = phone;
    _data["refreshToken"] = refreshToken;
    _data["role"] = role;
    if(seller != null) {
      _data["seller"] = seller?.toJson();
    }
    if(updatedAt != null) {
      _data["updatedAt"] = updatedAt?.toJson();
    }
    _data["username"] = username;
    return _data;
  }

  User copyWith({
    String? id,
    bool? blocked,
    CreatedAt2? createdAt,
    List<DeliveryAddresses>? deliveryAddresses,
    String? email,
    Image1? image13,
    String? password,
    String? phone,
    String? refreshToken,
    int? role,
    Seller? seller,
    UpdatedAt3? updatedAt,
    String? username,
  }) => User(
    id: id ?? this.id,
    blocked: blocked ?? this.blocked,
    createdAt: createdAt ?? this.createdAt,
    deliveryAddresses: deliveryAddresses ?? this.deliveryAddresses,
    email: email ?? this.email,
    image12: image13 ?? this.image12,
    password: password ?? this.password,
    phone: phone ?? this.phone,
    refreshToken: refreshToken ?? this.refreshToken,
    role: role ?? this.role,
    seller: seller ?? this.seller,
    updatedAt: updatedAt ?? this.updatedAt,
    username: username ?? this.username,
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

class Seller {
  String? aadhaarNumber;
  String? academicyear;
  String? admissionnumber;
  String? collegename;
  String? course;
  CreatedAt4? createdAt;
  IdProof? idProof;
  String? phoneNumber;
  String? shopname;
  String? status;
  UpdatedAt2? updatedAt;

  Seller({this.aadhaarNumber, this.academicyear, this.admissionnumber, this.collegename, this.course, this.createdAt, this.idProof, this.phoneNumber, this.shopname, this.status, this.updatedAt});

  Seller.fromJson(Map<String, dynamic> json) {
    if(json["aadhaarNumber"] is String) {
      aadhaarNumber = json["aadhaarNumber"];
    }
    if(json["academicyear"] is String) {
      academicyear = json["academicyear"];
    }
    if(json["admissionnumber"] is String) {
      admissionnumber = json["admissionnumber"];
    }
    if(json["collegename"] is String) {
      collegename = json["collegename"];
    }
    if(json["course"] is String) {
      course = json["course"];
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt4.fromJson(json["createdAt"]);
    }
    if(json["idProof"] is Map) {
      idProof = json["idProof"] == null ? null : IdProof.fromJson(json["idProof"]);
    }
    if(json["phone_number"] is String) {
      phoneNumber = json["phone_number"];
    }
    if(json["shopname"] is String) {
      shopname = json["shopname"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["updatedAt"] is Map) {
      updatedAt = json["updatedAt"] == null ? null : UpdatedAt2.fromJson(json["updatedAt"]);
    }
  }

  static List<Seller> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Seller.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["aadhaarNumber"] = aadhaarNumber;
    _data["academicyear"] = academicyear;
    _data["admissionnumber"] = admissionnumber;
    _data["collegename"] = collegename;
    _data["course"] = course;
    if(createdAt != null) {
      _data["createdAt"] = createdAt?.toJson();
    }
    if(idProof != null) {
      _data["idProof"] = idProof?.toJson();
    }
    _data["phone_number"] = phoneNumber;
    _data["shopname"] = shopname;
    _data["status"] = status;
    if(updatedAt != null) {
      _data["updatedAt"] = updatedAt?.toJson();
    }
    return _data;
  }

  Seller copyWith({
    String? aadhaarNumber,
    String? academicyear,
    String? admissionnumber,
    String? collegename,
    String? course,
    CreatedAt4? createdAt,
    IdProof? idProof,
    String? phoneNumber,
    String? shopname,
    String? status,
    UpdatedAt2? updatedAt,
  }) => Seller(
    aadhaarNumber: aadhaarNumber ?? this.aadhaarNumber,
    academicyear: academicyear ?? this.academicyear,
    admissionnumber: admissionnumber ?? this.admissionnumber,
    collegename: collegename ?? this.collegename,
    course: course ?? this.course,
    createdAt: createdAt ?? this.createdAt,
    idProof: idProof ?? this.idProof,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    shopname: shopname ?? this.shopname,
    status: status ?? this.status,
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
  String? city;
  CreatedAt3? createdAt;
  String? fullName;
  String? houseOrBuildingNumber;
  String? landmark;
  List<String>? phoneNumbers;
  String? pincode;
  String? roadNameOrArea;
  String? state;
  String? type;
  UpdatedAt1? updatedAt;

  DeliveryAddresses({this.id, this.city, this.createdAt, this.fullName, this.houseOrBuildingNumber, this.landmark, this.phoneNumbers, this.pincode, this.roadNameOrArea, this.state, this.type, this.updatedAt});

  DeliveryAddresses.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["city"] is String) {
      city = json["city"];
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt3.fromJson(json["createdAt"]);
    }
    if(json["fullName"] is String) {
      fullName = json["fullName"];
    }
    if(json["houseOrBuildingNumber"] is String) {
      houseOrBuildingNumber = json["houseOrBuildingNumber"];
    }
    if(json["landmark"] is String) {
      landmark = json["landmark"];
    }
    if(json["phone_numbers"] is List) {
      phoneNumbers = json["phone_numbers"] == null ? null : List<String>.from(json["phone_numbers"]);
    }
    if(json["pincode"] is String) {
      pincode = json["pincode"];
    }
    if(json["roadNameOrArea"] is String) {
      roadNameOrArea = json["roadNameOrArea"];
    }
    if(json["state"] is String) {
      state = json["state"];
    }
    if(json["type"] is String) {
      type = json["type"];
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
    _data["_id"] = id;
    _data["city"] = city;
    if(createdAt != null) {
      _data["createdAt"] = createdAt?.toJson();
    }
    _data["fullName"] = fullName;
    _data["houseOrBuildingNumber"] = houseOrBuildingNumber;
    _data["landmark"] = landmark;
    if(phoneNumbers != null) {
      _data["phone_numbers"] = phoneNumbers;
    }
    _data["pincode"] = pincode;
    _data["roadNameOrArea"] = roadNameOrArea;
    _data["state"] = state;
    _data["type"] = type;
    if(updatedAt != null) {
      _data["updatedAt"] = updatedAt?.toJson();
    }
    return _data;
  }

  DeliveryAddresses copyWith({
    String? id,
    String? city,
    CreatedAt3? createdAt,
    String? fullName,
    String? houseOrBuildingNumber,
    String? landmark,
    List<String>? phoneNumbers,
    String? pincode,
    String? roadNameOrArea,
    String? state,
    String? type,
    UpdatedAt1? updatedAt,
  }) => DeliveryAddresses(
    id: id ?? this.id,
    city: city ?? this.city,
    createdAt: createdAt ?? this.createdAt,
    fullName: fullName ?? this.fullName,
    houseOrBuildingNumber: houseOrBuildingNumber ?? this.houseOrBuildingNumber,
    landmark: landmark ?? this.landmark,
    phoneNumbers: phoneNumbers ?? this.phoneNumbers,
    pincode: pincode ?? this.pincode,
    roadNameOrArea: roadNameOrArea ?? this.roadNameOrArea,
    state: state ?? this.state,
    type: type ?? this.type,
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

class Image0 {
  String? name;
  String? url;

  Image0({this.name, this.url});

  Image0.fromJson(Map<String, dynamic> json) {
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<Image0> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Image0.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }

  Image0 copyWith({
    String? name,
    String? url,
  }) => Image0(
    name: name ?? this.name,
    url: url ?? this.url,
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