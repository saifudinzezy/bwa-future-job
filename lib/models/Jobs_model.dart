class JobsModel {
  JobsModel({
      required this.id,
      required this.name,
      required this.category,
      required this.companyName,
      required this.companyLogo,
      required this.location,
      required this.about,
      required this.qualifications,
      required this.responsibilities,
      required this.createdAt,
      required this.updatedAt,});

  JobsModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    companyName = json['companyName'];
    companyLogo = json['companyLogo'];
    location = json['location'];
    about = json['about'];
    qualifications = json['qualifications'] ;
    responsibilities = json['responsibilities'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  late String id;
  late String name;
  late String category;
  late String companyName;
  late String companyLogo;
  late String location;
  late List about;
  late List qualifications;
  late List responsibilities;
  late int createdAt;
  late int updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['category'] = category;
    map['companyName'] = companyName;
    map['companyLogo'] = companyLogo;
    map['location'] = location;
    map['about'] = about;
    map['qualifications'] = qualifications;
    map['responsibilities'] = responsibilities;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

}