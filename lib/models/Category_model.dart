class CategoryModel {
  CategoryModel({
      required this.id,
      required this.name,
      required this.imageUrl,
      required this.createdAt,
      required this.updatedAt,});

  CategoryModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  late String id;
  late String name;
  late String imageUrl;
  late int createdAt;
  late int updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['imageUrl'] = imageUrl;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }
}