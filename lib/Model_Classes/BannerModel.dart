
class BannerModel {
  List<Banners>? banners;

  BannerModel({this.banners});

  BannerModel.fromJson(Map<String, dynamic> json) {
    if(json["banners"] is List) {
      banners = json["banners"] == null ? null : (json["banners"] as List).map((e) => Banners.fromJson(e)).toList();
    }
  }

  static List<BannerModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => BannerModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(banners != null) {
      _data["banners"] = banners?.map((e) => e.toJson()).toList();
    }
    return _data;
  }

  BannerModel copyWith({
    List<Banners>? banners,
  }) => BannerModel(
    banners: banners ?? this.banners,
  );
}

class Banners {
  String? id;
  CreatedAt? createdAt;
  Image3? image8;
  String? link;
  String? productId;
  String? title;
  UpdatedAt? updatedAt;
  String? userId;

  Banners({this.id, this.createdAt, this.image8, this.link, this.productId, this.title, this.updatedAt, this.userId});

  Banners.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["createdAt"] is Map) {
      createdAt = json["createdAt"] == null ? null : CreatedAt.fromJson(json["createdAt"]);
    }
    if(json["image"] is Map) {
      image8 = json["image"] == null ? null : Image3.fromJson(json["image"]);
    }
    if(json["link"] is String) {
      link = json["link"];
    }
    if(json["product_id"] is String) {
      productId = json["product_id"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["updatedAt"] is Map) {
      updatedAt = json["updatedAt"] == null ? null : UpdatedAt.fromJson(json["updatedAt"]);
    }
    if(json["user_id"] is String) {
      userId = json["user_id"];
    }
  }

  static List<Banners> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Banners.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    if(createdAt != null) {
      _data["createdAt"] = createdAt?.toJson();
    }
    if(image8 != null) {
      _data["image"] = image8?.toJson();
    }
    _data["link"] = link;
    _data["product_id"] = productId;
    _data["title"] = title;
    if(updatedAt != null) {
      _data["updatedAt"] = updatedAt?.toJson();
    }
    _data["user_id"] = userId;
    return _data;
  }

  Banners copyWith({
    String? id,
    CreatedAt? createdAt,
    Image3? image9,
    String? link,
    String? productId,
    String? title,
    UpdatedAt? updatedAt,
    String? userId,
  }) => Banners(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    image8: image9 ?? this.image8,
    link: link ?? this.link,
    productId: productId ?? this.productId,
    title: title ?? this.title,
    updatedAt: updatedAt ?? this.updatedAt,
    userId: userId ?? this.userId,
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

class Image3 {
  String? name;
  String? url;

  Image3({this.name, this.url});

  Image3.fromJson(Map<String, dynamic> json) {
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<Image3> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Image3.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }

  Image3 copyWith({
    String? name,
    String? url,
  }) => Image3(
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