class JobModel {
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

  JobModel(
      this.id,
      this.name,
      this.category,
      this.companyName,
      this.companyLogo,
      this.location,
      this.about,
      this.qualifications,
      this.responsibilities,
      this.createdAt,
      this.updatedAt);

  JobModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    category = json['category'];
    companyName = json['companyName'];
    companyLogo = json['companyLogo'];
    location = json['location'];
    about = json['about'];
    qualifications = json['qualifications'];
    responsibilities = json['responsibilities'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'companyName': companyName,
      'companyLogo': companyLogo,
      'location': location,
      'about': about,
      'qualifications': qualifications,
      'responsibilities': responsibilities,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
